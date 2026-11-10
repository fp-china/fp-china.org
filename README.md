
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

### 使用者影响

升级到正式 Calcit 和 `@calcit/procs` **0.40.0** 后，请重新安装依赖并重建。页面继续输出静态 HTML 和 CSS，四份 Markdown、导航链接和脚注照常生成。

使用正式 Respo **0.19.5**、Markdown **0.8.2** 和 UI **0.15.2**，传递依赖 JS-FFI **0.2.13**、Router **0.12.2**。横纵间距使用对应的公开组件，静态渲染入口显式绑定 Respo 的操作类型槽，供事件属性的类型检查使用。

### 开发与验证

使用 Node.js 24、Yarn 4.18.0。新解析出的 npm 包版本必须已发布至少 60 分钟，本仓库未配置单包豁免；已有 immutable 锁版本不重新计算等待时间。

```sh
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit --warn-dyn-method --check-only --all-defs
calcit fix --workflow strict --verify --format edn
yarn build
yarn test
```

本地全定义和完整 strict、原七项 SSR 测试、Caps 校验、immutable 安装及构建通过。生成页面保留 Markdown、链接和样式，未重新执行浏览器交互。

Node 入口读取四份 Markdown 并生成 index.html，Vite 输出 HTML/CSS；保持源 Markdown 内容及已有外链。只维护 calcit.cirru/deps.cirru，不恢复 compact/package 或提交 js-out。

### 前端部署

`VITE_BASE_URL` 指定资源基址（默认 `./`）。CI 使用 `https://cos-sh.tiye.me/fp-china/fp-china.org/`，PR 使用 `/pr/<number>/<run>/<attempt>/` 隔离前缀。原 workflow 下载精确已测试 dist artifact，不重新构建上传；COS action v1.2.0 只上传 dist/，使用内置 verify，不增加项目 checker。PR 缺凭据可继续测试，但不声称上传校验已通过。

上传按 PR/production 分队列、不取消；main HEAD 保护跳过过期提交，API 失败停止部署。原 rsync 源 dist/*、目标 `rsync-user@tiye.me:/web-assets/repo/fp-china/fp-china.org` 保持，仅 main push 执行，不部署后端。Actions 保留与原 SHA 对应的精确正式 tag，接受 tag 可移动风险。

### 已有源码迁移

此前已将 join-str 改为 join-string、Map merge 改为公开方法、静态 CSS 改为等价 String，并去掉恒等包装；本轮不重复改变这些代码。旧 alpha 验收不代替本轮正式 CLI 和实际模块图的原测试。本 PR 不授权合并或生产部署。
