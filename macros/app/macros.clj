
(ns app.macros
  (:require [clojure.java.io :as io]))

(defmacro inline-resource [resource-path]
  (slurp resource-path))
