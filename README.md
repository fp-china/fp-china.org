
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

### 使用者影响：正式 Calcit 0.31.0 与 Markdown 图

CLI/procs升级为正式 **0.31.0**，使用已发布Markdown0.5.0-alpha.4、Respo0.17.0-alpha.4、
UI0.9.0-alpha.4及传递JS-FFI0.2.7、Router0.9.0-alpha.3，Vite 固定8.3.3。请重新安装完整图并重建，不混用旧alpha缓存。
模块图仍含 alpha，UI升级可能有样式差异，不承诺逐像素相同；四份Markdown内容不改动。
此前已迁移一处 Map merge 为方法，去掉一处单参数恒等包装，静态 CSS 值改为等价 String；
全部公开 schema、写出顺序与原七项 SSR 测试保持。原站点不含浏览器 JS/HUD，不凭空添加。
站点仍是纯静态 SSR；四份 Markdown、外部链接、共享资源及部署路径不变。
CI保留all-defs、完整strict与原七项SSR测试，只删除重复namespace清单，
不添加脚本、concurrently、预算或强转。本轮不合并/部署生产、不发布站点tag/npm。
本轮只更新工具链与依赖配对，源码已兼容；不添加浏览器事件绑定。验收以本PR结果为准，历史0.30.1/alpha.5结果不作为新证明。

### Development and deployment

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
CI 独立执行 strict Caps 解析。此前程序 API 迁移将已退役的 `join-str` 改为 `join-string`，
保持 CSS 收集与 HTML 写出顺序，不新增强转或校验脚本，不改动既有七项 SSR 断言。

The normal CI uses all-definition checks, full strict workflow verification
and the existing SSR tests. Uploads queue without cancellation, separately for
each PR and production. The single production HEAD check skips superseded
commits before reading credentials or deploying; API failures stop the job.

本 PR 不授权合并或生产部署。
