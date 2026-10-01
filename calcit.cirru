
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {}
      :description "|Generate the static FP China HTML page in Node.js"
      :init-fn 'app.main/main!
      :mode :js
      :reload-fn 'app.main/main!
      :target :node
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |respo-markdown.calcit/
      :type-slots $ {}
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container ()
            div
              {} $ :style $ merge ui/global
              comp-header
              comp-content
              comp-footer
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-content $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-content ()
            div
              {} $ :style $ {} (:background-color :white)
              div
                {} $ :style $ {} (:padding 16) (:max-width 600) (:margin :auto) (:font-size 16)
                comp-md-block (inline |events.md)
                  {} $ :style $ {}
                =< nil 40
                comp-md-block (inline |langs.md)
                  {} $ :style $ {}
                =< nil 40
                comp-md-block (inline |videos.md)
                  {} $ :style $ {}
                =< nil 40
                comp-md-block (inline |sites.md)
                  {} $ :style $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-footer $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-footer ()
            div
              {} $ :style $ {} (:background-color "|rgb(102,102,102)") (:padding "|32px 16px")
              div
                {} $ :style $ {} (:max-width 600) (:margin :auto)
                a $ {} (:href |https://github.com/fp-china/fp-china.org) (:target |_blank) (:inner-text "|Site on GitHub")
                  :style $ {} (:text-decoration :none)
                    :color $ hsl 240 80 90
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-header $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-header ()
            div
              {} $ :style $ {} (:padding "|32px 16px") (:background-color "|rgb(102,102,102)") (:color :white)
              div
                {} $ :style $ merge ui/row-middle
                  {} (:max-width 600) (:margin :auto)
                <> "|函数式编程中文社区" $ {} $ :font-size 24
                =< 16 nil
                a $ {}
                  :style $ {} $ :color (hsl 200 70 90)
                  :inner-text "|讨论组"
                  :href |https://github.com/fp-china/fp-china.org/discussions
                  :target |_blank
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'inline $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defmacro inline (path)
            read-file $ str |content/ path
          :examples $ []
          :schema $ :: 'Macro $ {}
            :capabilities $ #{} :fs-read
            :expansion $ :: 'Expr 'String
            :required $ [] 'Syntax
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require
            respo.util.format :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp <> div a
            respo.comp.space :refer $ =<
            respo-md.comp.md :refer $ comp-md-block
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $
              get-env |mode
              , .unwrap-or |release
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:storage |fp-china) (:dev-ui |http://localhost:8100/main.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main.css) (:cdn-url |https://cos-sh.tiye.me/fp-china/fp-china.org/) (:title "|中文函数式编程导航") (:icon |http://cdn.tiye.me/logo/mvc-works.png)
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            write-html!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (write-html!) (println "|Code updated.")
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'write-html! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn write-html! ()
            fs/writeFileSync |index.html $ make-string $ html ({})
              head ({})
                create-element :meta $ {} $ :charset |utf8
                title $ {} $ :inner-text "|函数式编程中文社区"
                link $ {} (:rel |stylesheet) (:href |./entry/main.css)
                style $ {} $ :innerHTML (join-str @*style-list-in-nodejs |)
              body ({}) (comp-container)
            println "|Wrote to index.html"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ html head body link title create-element style
            respo.css :refer $ *style-list-in-nodejs
            respo.render.html :refer $ make-string
            app.comp.container :refer $ comp-container
            app.config :as config
            |node:fs :as fs
