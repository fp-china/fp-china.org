
(ns app.config )

(def cdn?
  (cond
    (exists? js/window) false
    (exists? js/process) (= "true" js/process.env.cdn)
    :else false))

(def dev?
  (let [debug? (do ^boolean js/goog.DEBUG)]
    (cond
      (exists? js/window) debug?
      (exists? js/process) (not= "true" js/process.env.release)
      :else true)))

(def site
  {:storage "fp-china",
   :dev-ui "http://localhost:8100/main.css",
   :release-ui "http://cdn.tiye.me/favored-fonts/main.css",
   :cdn-url "http://cdn.tiye.me/fp-china-org/",
   :cdn-folder "tiye.me:cdn/fp-china-org",
   :title "中文函数式编程导航",
   :icon "http://cdn.tiye.me/logo/mvc-works.png",
   :upload-folder "tiye.me:repo/fp-china/fp-china.org/"})
