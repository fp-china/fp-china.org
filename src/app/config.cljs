
(ns app.config (:require [app.util :refer [get-env!]]))

(def dev? (if (exists? js/window) (do ^boolean js/goog.DEBUG) (= "dev" (get-env! "env"))))
