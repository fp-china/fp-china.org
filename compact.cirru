
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/main!)
    :modules $ [] |respo.calcit/ |respo-ui.calcit/ |memof/ |respo-markdown.calcit/
    :version nil
  :files $ {}
    |app.comp.container $ {}
      :ns $ quote
        ns app.comp.container $ :require
          [] respo.util.format :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp cursor-> action-> mutation-> <> div button textarea span a
          [] respo.comp.space :refer $ [] =<
          [] reel.comp.reel :refer $ [] comp-reel
          [] respo-md.comp.md :refer $ [] comp-md comp-md-block
          [] app.config :refer $ [] dev?
      :defs $ {}
        |comp-container $ quote
          defcomp comp-container () $ div
            {} $ :style (merge ui/global)
            comp-header
            comp-content
            comp-footer
        |comp-content $ quote
          defcomp comp-content () $ div
            {} $ :style
              {} $ :background-color :white
            div
              {} $ :style
                {} (:padding 16) (:max-width 600) (:margin :auto) (:font-size 16)
              comp-md-block (inline "\"events.md")
                {} $ :style ({})
              =< nil 40
              comp-md-block (inline "\"videos.md")
                {} $ :style ({})
              =< nil 40
              comp-md-block (inline "\"sites.md")
                {} $ :style ({})
        |comp-footer $ quote
          defcomp comp-footer () $ div
            {} $ :style
              {} (:background-color "\"rgb(102,102,102)") (:padding "\"32px 16px")
            div
              {} $ :style
                {} (:max-width 600) (:margin :auto)
              a $ {} (:href "\"https://github.com/fp-china/fp-china.org") (:target "\"_blank") (:inner-text "\"Site on GitHub")
                :style $ {} (:text-decoration :none)
                  :color $ hsl 240 80 90
        |comp-header $ quote
          defcomp comp-header () $ div
            {} $ :style
              {} (:padding "\"32px 16px") (:background-color "\"rgb(102,102,102)") (:font-size 24)
            div
              {} $ :style
                merge ui/row-parted $ {} (:max-width 600) (:margin :auto)
              <> "\"函数式编程中文社区" $ {} (:color :white)
        |inline $ quote
          defmacro inline (path)
            read-file $ str "\"content/" path
      :proc $ quote ()
    |app.config $ {}
      :ns $ quote (ns app.config)
      :defs $ {}
        |dev? $ quote
          def dev? $ = "\"dev" (get-env "\"mode")
        |site $ quote
          def site $ {} (:storage "\"fp-china") (:dev-ui "\"http://localhost:8100/main.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main.css") (:cdn-url "\"http://cdn.tiye.me/fp-china-org/") (:title "\"中文函数式编程导航") (:icon "\"http://cdn.tiye.me/logo/mvc-works.png")
      :proc $ quote ()
    |app.main $ {}
      :ns $ quote
        ns app.main $ :require
          [] respo.core :refer $ [] render! clear-cache! realize-ssr! html head body link title create-element
          respo.render.html :refer $ make-string
          [] app.comp.container :refer $ [] comp-container
          [] app.schema :as schema
          [] app.config :as config
          "\"fs" :as fs
      :defs $ {}
        |main! $ quote
          defn main! ()
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            write-html!
        |reload! $ quote
          defn reload! () (write-html!) (println "|Code updated.")
        |write-html! $ quote
          defn write-html! ()
            fs/writeFileSync "\"index.html" $ make-string
              html ({})
                head ({})
                  create-element :meta $ {} (:charset "\"utf8")
                  title $ {} (:inner-text "\"函数式编程中文社区")
                  link $ {} (:rel "\"stylesheet") (:href "\"./entry/main.css")
                body ({}) (comp-container)
            println "\"Wrote to index.html"
      :proc $ quote ()
    |app.page $ {}
      :ns $ quote
        ns app.page
          :require
            [] respo.render.html :refer $ [] make-string
            [] shell-page.core :refer $ [] make-page spit slurp
            [] app.comp.container :refer $ [] comp-container
            [] app.schema :as schema
            [] reel.schema :as reel-schema
            [] cljs.reader :refer $ [] read-string
            [] app.config :as config
            [] cumulo-util.build :refer $ [] get-ip!
          :require-macros $ [] clojure.core.strint :refer ([] <<)
      :defs $ {}
        |base-info $ quote
          def base-info $ {}
            :title $ :title config/site
            :icon $ :icon config/site
            :ssr nil
            :inline-html nil
        |dev-page $ quote
          defn dev-page () $ make-page |
            merge base-info $ {}
              :styles $ [] (<< "\"http://~(get-ip!):8100/main.css") "\"/entry/main.css"
              :scripts $ [] "\"/client.js"
              :inline-styles $ []
        |main! $ quote
          defn main! ()
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            if config/dev?
              spit "\"target/index.html" $ dev-page
              spit "\"dist/index.html" $ prod-page
        |prod-page $ quote
          defn prod-page () $ let
              reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
              html-content $ make-string (comp-container reel)
              assets $ read-string (slurp "\"dist/assets.edn")
              cdn $ if config/cdn? (:cdn-url config/site) "\""
              prefix-cdn $ fn (x) (str cdn x)
            make-page html-content $ merge base-info
              {}
                :styles $ [] (:release-ui config/site)
                :scripts $ map ("#()" -> % :output-name prefix-cdn) assets
                :ssr "\"respo-ssr"
                :inline-styles $ [] (slurp "\"./entry/main.css")
      :proc $ quote ()
