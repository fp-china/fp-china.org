
函数式编程中文社区(Functional Programming in China)
----

http://fp-china.org

### Languages

* Clojure
* Haskell
* Elixir
* ReasonML/Elm
* Scala
* WebAssembly

反馈欢迎联系 [@jiyinyiyong](https://twitter.com/jiyinyiyong).

### Workflow

https://github.com/calcit-lang/respo-calcit-workflow

### Development and deployment

本轮验收使用配对的 Calcit / procs 0.30.1-alpha.5、正式 Respo 0.16.122、
Respo UI 0.7.41 和 Markdown 0.4.57，不代表正式 0.30.1 二进制验收。
站点仍是纯静态 SSR；四份 Markdown、外部链接、共享资源及部署路径不变。
Use Node.js 24 and Yarn 4.18.0. Only `calcit.cirru` and
`deps.cirru` are source snapshots/manifests; do not recreate `compact.cirru`
or `package.cirru`.

```sh
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit calcit.cirru --strict-types --warn-dyn-method --check-only --all-defs
calcit calcit.cirru fix --workflow strict --verify --format edn
yarn build
yarn test
```

This is a static server-rendered website. The Node.js Calcit entry reads all
four Markdown files at compilation time and generates `index.html`; Vite
builds that HTML and its stylesheet without shipping a browser JS bundle.

`VITE_BASE_URL` selects the frontend asset base (default `./`). CI uses
`https://cos-sh.tiye.me/fp-china/fp-china.org/`, with
`/pr/<number>/<run-id>/<attempt>/` for isolated PR previews.
COS uploads only `dist/`; cos-upload-action v1.2.0 performs public upload
verification internally. Configure `COS_BUCKET`, `COS_SECRET_ID`, and
`COS_SECRET_KEY` in repository secrets. PRs without credentials still test
the build but do not prove that upload verification passed.

The production rsync source remains `dist/*` and its destination remains
`rsync-user@tiye.me:/web-assets/repo/fp-china/fp-china.org`. It runs only on
main pushes, never for PRs. Markdown source, existing external links, and
shared asset URLs are unchanged.

本次本地验收未运行 Caps；开发者仍须执行上述安装步骤以生成模块链接，
CI 独立执行 strict Caps 解析。唯一程序 API 迁移是已退役的 `join-str` 改为 `join-string`，
保持 CSS 收集与 HTML 写出顺序，不新增强转或校验脚本，不改动既有七项 SSR 断言。

The normal CI uses all-definition/public checks, full strict workflow verification
and the existing SSR tests. Uploads queue without cancellation, separately for
each PR and production. The single production HEAD check skips superseded
commits before reading credentials or deploying; API failures stop the job.

本 PR 不授权合并或生产部署。
