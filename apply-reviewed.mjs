import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {readFileSync,writeFileSync,mkdirSync} from 'node:fs';
assert.equal(process.env.GITHUB_ACTIONS,'true');assert.equal(process.platform,'linux');
assert.equal(execFileSync('calcit',['-v'],{encoding:'utf8'}).trim(),'0.30.1');
const run=(...a)=>execFileSync('calcit',['calcit.cirru',...a],{encoding:'utf8',maxBuffer:48e6,stdio:['ignore','pipe','pipe']});
const blob=()=>execFileSync('git',['hash-object','calcit.cirru'],{encoding:'utf8'}).trim();
assert.equal(blob(),'00467ac5fbe758835ee8f6c486cc196849a86dcc');
const norm=v=>Array.isArray(v)?v.map(norm):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,k==='__edn_set'?x.map(norm).sort((a,b)=>JSON.stringify(a).localeCompare(JSON.stringify(b))):norm(x)])):v;
const q=(...a)=>norm(JSON.parse(run('query',...a,'--format','json')).data);
const input=JSON.parse(readFileSync('reviewed.json','utf8'));
const before={config:norm(input.config.data),namespaces:input.namespaces.map(x=>norm(x.data)),defs:input.definitions.map(x=>norm(x.data))};
assert.equal(before.defs.length,12);assert.equal(before.defs.reduce((n,d)=>n+d.tests.length+d.examples.length,0),0);
assert.deepEqual(q('config'),before.config);assert.deepEqual(q('ns').namespaces.map(n=>q('ns',n)),before.namespaces);
for(const d of before.defs)assert.deepEqual(q('def',d.id),d);
const expected=structuredClone(before),ops=[],sites=[],counts={merge:0,identity:0,css:0};
const show=(id,path)=>JSON.parse(run('tree','show',id,'--path','@'+path.join('.'),'--format','json')).tree;
const replace=(id,path,value)=>ops.push(['tree','replace',id,'--path','@'+path.join('.'),'--input-format','json-ast','--code',JSON.stringify(value)]);
function walk(x,path,id){
  if(!Array.isArray(x)||['quote','quasiquote','comment',';','defmacro'].includes(x[0]))return x;
  const original=structuredClone(x),identity=x[0]==='merge'&&x.length===2;
  if(x[0]==='merge'){assert.deepEqual(show(id,path),original);if(identity){assert.equal(id,'app.comp.container/comp-container');assert.equal(x[1],'ui/global');}else{assert.equal(id,'app.comp.container/comp-header');assert.equal(x.length,3);replace(id,[...path,0],'.merge');x[0]='.merge';counts.merge++;}}
  if(x[0]==='{}')for(let j=1;j<x.length;j++){
    const pair=x[j];if(!Array.isArray(pair)||pair.length!==2)continue;const [k,v]=pair;let next;
    if([':max-width',':padding',':font-size'].includes(k)&&typeof v==='string'&&/^\d+$/.test(v))next='|'+v+'px';
    else if([':background-color',':color',':margin',':text-decoration'].includes(k)&&typeof v==='string'&&v.startsWith(':'))next='|'+v.slice(1);
    if(next!==undefined){assert.ok(id.startsWith('app.comp.container/'));const p=[...path,j,1];assert.equal(show(id,p),v);replace(id,p,next);pair[1]=next;counts.css++;sites.push({id,path:p,before:v,after:next});}
  }
  x=x.map((v,i)=>walk(v,[...path,i],id));
  if(identity){replace(id,path,x[1]);counts.identity++;return x[1];}
  return x;
}
for(const d of expected.defs)d.code=walk(d.code,[],d.id);
assert.deepEqual(counts,{merge:1,identity:1,css:12});assert.equal(ops.length,14);
for(const d of before.defs){const e=expected.defs.find(x=>x.id===d.id);for(const k of Object.keys(d).filter(k=>k!=='code'))assert.deepEqual(e[k],d[k]);}
for(const d of before.defs.filter(d=>!['app.comp.container/comp-container','app.comp.container/comp-content','app.comp.container/comp-footer','app.comp.container/comp-header'].includes(d.id)))assert.deepEqual(expected.defs.find(x=>x.id===d.id),d);
mkdirSync('acceptance',{recursive:true});for(const [name,value]of Object.entries({before,expected,sites,operations:ops}))writeFileSync('acceptance/'+name+'.json',JSON.stringify(value,null,2));
const txn=['edit','transaction','--file','acceptance/operations.json','--format','json'],preview=JSON.parse(run(...txn,'--dry-run'));assert.ok(preview.scoped_revision);writeFileSync('acceptance/preview.json',JSON.stringify(preview,null,2));writeFileSync('acceptance/applied.json',run(...txn,'--expect-revision',preview.scoped_revision));
const after={config:q('config'),namespaces:q('ns').namespaces.map(n=>q('ns',n)),defs:expected.defs.map(d=>q('def',d.id))};assert.deepEqual(after,expected);
writeFileSync('acceptance/after.json',JSON.stringify(after,null,2));writeFileSync('acceptance/snapshot-after-blob.txt',blob());
writeFileSync('acceptance/summary.json',JSON.stringify({definitions:12,tests:0,examples:0,operations:14,counts,unsafeBefore:0,unsafeAfter:0,preserved:'Allpublicschemas/imports/metadata/config/macros/fourMarkdownfiles/HTMLandCSSwriteorder/mainreload/original7SSRtestassertions/staticnoJSarchitecture remain. OriginalnoHUD. Nohelpers/casts/budgets/tests/frameworks/compiler rules.'},null,2));
