import assert from 'node:assert/strict';
import fs from 'node:fs';
import path from 'node:path';
import test from 'node:test';

const html = fs.readFileSync('index.html', 'utf8');
const built = fs.readFileSync('dist/index.html', 'utf8');
const contentFiles = ['events.md', 'langs.md', 'videos.md', 'sites.md'];
const escape = (s) => s.replaceAll('&', '&amp;').replaceAll('<', '&lt;').replaceAll('>', '&gt;');

for (const file of contentFiles) {
  test(`real SSR preserves links and inline code from ${file}`, () => {
    const source = fs.readFileSync(`content/${file}`, 'utf8');
    const links = [...source.matchAll(/\[([^\]]+)\]\(([^)]+)\)/g)];
    assert.ok(links.length > 0, `${file} must exercise actual links`);
    for (const output of [html, built]) {
      for (const [, label, href] of links) {
        assert.ok(output.includes(`href="${escape(href)}"`), `missing URL: ${href}`);
        assert.ok(output.includes(escape(label)), `missing label: ${label}`);
      }
      for (const [, code] of source.matchAll(/`([^`]+)`/g)) {
        assert.ok(output.includes(`${escape(code)}</code>`), `missing inline code: ${code}`);
      }
    }
  });
}

test('static page preserves the header, all navigation sections, and footer', () => {
  assert.ok(html.includes('<title>函数式编程中文社区</title>'));
  assert.ok(html.includes('https://github.com/fp-china/fp-china.org/discussions'));
  for (const heading of ['Clojure', 'Haskell', 'Elixir', 'ReasonML, Elm, BuckleScript 群', 'WebAssembly', 'Scala', 'LISP', '其他']) {
    assert.ok(html.includes(`<span>${heading}</span></h3>`), `missing section: ${heading}`);
  }
  assert.ok(html.includes('Site on GitHub'));
  assert.equal((html.match(/data-comp="comp-md-block"/g) ?? []).length, 4);
  assert.doesNotMatch(built, /<script\b/i, 'this is an SSR-only site, not a browser bundle');
});

test('SSR includes collected component styles', () => {
  const css = html.match(/<style[^>]*>([\s\S]*?)<\/style>/)?.[1];
  assert.ok(css, 'component styles must be emitted, not left in a Node atom');
  for (const className of ['style-space__respo_comp_space', 'style-inline-code__respo-md_comp_md', 'style-default-link__respo-md_comp_md']) {
    assert.ok(css.includes(`.${className}`), `missing CSS rule: ${className}`);
  }
  assert.doesNotMatch(css, /\\n|&gt;|&lt;|&amp;/, 'CSS must not contain transport or HTML escapes');
});

test('built stylesheet uses the selected base and exists locally', () => {
  const base = process.env.VITE_BASE_URL ?? './';
  const stylesheet = [...built.matchAll(/<link\b[^>]*href="([^"]+)"[^>]*>/g)]
    .map((match) => match[1]).filter((href) => href.endsWith('.css'));
  assert.equal(stylesheet.length, 1);
  for (const href of stylesheet) {
    assert.ok(href.startsWith(base), `wrong asset base: ${href}`);
    const relative = href.slice(base.length);
    assert.match(relative, /^assets\/[^/]+\.css$/);
    assert.ok(fs.statSync(path.join('dist', relative)).size > 0);
  }
  assert.ok(built.includes('函数式编程中文社区'));
});
