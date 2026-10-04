
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

Use Calcit 0.27.0, Node.js 24, and Yarn 4.18.0. Only `calcit.cirru` and
`deps.cirru` are source snapshots/manifests; do not recreate `compact.cirru`
or `package.cirru`.

```sh
caps --ci
yarn install --immutable
caps verify --toolchain
calcit calcit.cirru --strict-types --warn-dyn-method --check-only
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

The normal CI uses strict entry/public checks and the existing SSR tests, not
a compiler fix workflow. Uploads queue without cancellation, separately for
each PR and production. The single production HEAD check skips superseded
commits before reading credentials or deploying; API failures stop the job.

Calcit 0.28 migration is still pending compatible shared module releases. This
deployment change does not update Calcit, module tags, or existing tests.
