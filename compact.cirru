
{} (:about "|file is generated - never edit directly; learn cr edit/tree workflows before changing") (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/main!) (:version |0.1.0)
    :modules $ [] |respo.calcit/ |respo-ui.calcit/ |memof/ |respo-markdown.calcit/
  :entries $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |) (:schema nil)
          :code $ quote
            defcomp comp-container () $ div
              {} $ :style (merge ui/global)
              comp-header
              comp-content
              comp-footer
          :examples $ []
        |comp-content $ %{} :CodeEntry (:doc |) (:schema nil)
          :code $ quote
            defcomp comp-content () $ div
              {} $ :style
                {} $ :background-color :white
              div
                {} $ :style
                  {} (:padding 16) (:max-width 600) (:margin :auto) (:font-size 16)
                comp-md-block (inline "\"events.md")
                  {} $ :style ({})
                =< nil 40
                comp-md-block (inline "\"langs.md")
                  {} $ :style ({})
                =< nil 40
                comp-md-block (inline "\"videos.md")
                  {} $ :style ({})
                =< nil 40
                comp-md-block (inline "\"sites.md")
                  {} $ :style ({})
          :examples $ []
        |comp-footer $ %{} :CodeEntry (:doc |) (:schema nil)
          :code $ quote
            defcomp comp-footer () $ div
              {} $ :style
                {} (:background-color "\"rgb(102,102,102)") (:padding "\"32px 16px")
              div
                {} $ :style
                  {} (:max-width 600) (:margin :auto)
                a $ {} (:href "\"https://github.com/fp-china/fp-china.org") (:target "\"_blank") (:inner-text "\"Site on GitHub")
                  :style $ {} (:text-decoration :none)
                    :color $ hsl 240 80 90
          :examples $ []
        |comp-header $ %{} :CodeEntry (:doc |) (:schema nil)
          :code $ quote
            defcomp comp-header () $ div
              {} $ :style
                {} (:padding "\"32px 16px") (:background-color "\"rgb(102,102,102)") (:color :white)
              div
                {} $ :style
                  merge ui/row-middle $ {} (:max-width 600) (:margin :auto)
                <> "\"函数式编程中文社区" $ {} (:font-size 24)
                =< 16 nil
                a $ {}
                  :style $ {}
                    :color $ hsl 200 70 90
                  :inner-text "\"讨论组"
                  :href "\"https://github.com/fp-china/fp-china.org/discussions"
                  :target "\"_blank"
          :examples $ []
        |inline $ %{} :CodeEntry (:doc |) (:schema nil)
          :code $ quote
            defmacro inline (path)
              read-file $ str "\"content/" path
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require
            respo.util.format :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp <> div button textarea span a
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-reel
            respo-md.comp.md :refer $ comp-md comp-md-block
            app.config :refer $ dev?
    |app.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |) (:schema nil)
          :code $ quote
            def dev? $ = "\"dev" (get-env "\"mode")
          :examples $ []
        |site $ %{} :CodeEntry (:doc |) (:schema nil)
          :code $ quote
            def site $ {} (:storage "\"fp-china") (:dev-ui "\"http://localhost:8100/main.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main.css") (:cdn-url "\"http://cdn.tiye.me/fp-china-org/") (:title "\"中文函数式编程导航") (:icon "\"http://cdn.tiye.me/logo/mvc-works.png")
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote (ns app.config)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |main! $ %{} :CodeEntry (:doc |) (:schema nil)
          :code $ quote
            defn main! ()
              println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
              write-html!
          :examples $ []
        |reload! $ %{} :CodeEntry (:doc |) (:schema nil)
          :code $ quote
            defn reload! () (write-html!) (println "|Code updated.")
          :examples $ []
        |write-html! $ %{} :CodeEntry (:doc |) (:schema nil)
          :code $ quote
            defn write-html! ()
              fs/writeFileSync "\"index.html" $ make-string
                html ({})
                  head ({})
                    create-element :meta $ {} (:charset "\"utf8")
                    title $ {} (:inner-text "\"函数式编程中文社区")
                    link $ {} (:rel "\"stylesheet") (:href "\"./entry/main.css")
                  body ({}) (comp-container)
              println "\"Wrote to index.html"
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns app.main $ :require
            respo.core :refer $ render! clear-cache! realize-ssr! html head body link title create-element
            respo.render.html :refer $ make-string
            app.comp.container :refer $ comp-container
            app.schema :as schema
            app.config :as config
            "\"fs" :as fs
