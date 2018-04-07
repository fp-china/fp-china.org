
(ns app.schema )

(def config {:storage "fp-china-org-storage"})

(def dev? (do ^boolean js/goog.DEBUG))

(def store {:states {}, :content ""})
