
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

### 使用者影响：Calcit 0.32.1

开发与 CI 配对升级为正式 Calcit / procs **0.32.1**。使用实际已发布 Markdown 0.5.0-alpha.5、Respo 0.17.1、UI 0.9.0，传递 JS-FFI 0.2.9、Router 0.9.0-alpha.4；明确保留仍需使用的 alpha，不将本地模块图当作发布图。请重新严格安装整图并重建，UI 更新不保证样式逐像素一致。

十个完整官方定义视图与规范化后的原 main 相同，代码、schema 和附带数据不变；本项目没有旧类型形式需要额外改写。四份 Markdown、链接、CSS 收集与写出顺序不改。站点仍为纯静态 SSR，不向浏览器发布 JS bundle；原本没有 HUD，本轮未添加或删除。项目版本仍为 0.1.0，不发版、不合并或生产部署。

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

本轮使用正式 0.32.1 和实际发布模块，通过全部定义、默认严格类型诊断、完整 strict、原七项 SSR 测试、canonical、Caps 严格解析与工具链配对、immutable 安装及构建。隔离浏览器首页、25 个链接目标与刷新正常，DOM 中无 script，捕获 warning/error 为空，未访问外链。原有 `--strict-types` 参数在 0.32 默认严格模式下已弃用，移除冗余参数；全部定义、动态方法警告、strict 及原七项断言保留，不放宽类型或添加验证脚本。

Node 入口读取四份 Markdown 并生成 index.html，Vite 输出 HTML/CSS；保持源 Markdown 内容及已有外链。只维护 calcit.cirru/deps.cirru，不恢复 compact/package 或提交 js-out。

### 前端部署

`VITE_BASE_URL` 指定资源基址（默认 `./`）。CI 使用 `https://cos-sh.tiye.me/fp-china/fp-china.org/`，PR 使用 `/pr/<number>/<run>/<attempt>/` 隔离前缀。原 workflow 下载精确已测试 dist artifact，不重新构建上传；COS action v1.2.0 只上传 dist/，使用内置 verify，不增加项目 checker。PR 缺凭据可继续测试，但不声称上传校验已通过。

上传按 PR/production 分队列、不取消；main HEAD 保护跳过过期提交，API 失败停止部署。原 rsync 源 dist/*、目标 `rsync-user@tiye.me:/web-assets/repo/fp-china/fp-china.org` 保持，仅 main push 执行，不部署后端。Actions 保留与原 SHA 对应的精确正式 tag，接受 tag 可移动风险。

### 已有源码迁移

此前已将 join-str 改为 join-string、Map merge 改为公开方法、静态 CSS 改为等价 String，并去掉恒等包装；本轮不重复改变这些代码。旧 alpha 验收不代替本轮正式 CLI 和实际模块图的原测试。本 PR 不授权合并或生产部署。
