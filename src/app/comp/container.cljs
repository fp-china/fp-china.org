
(ns app.comp.container
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.core
             :refer
             [defcomp cursor-> action-> mutation-> <> div button textarea span a]]
            [respo.comp.space :refer [=<]]
            [reel.comp.reel :refer [comp-reel]]
            [respo-md.comp.md :refer [comp-md comp-md-block]]
            [app.config :refer [dev?]]
            [cumulo-util.build :refer [inline-resource]]))

(defcomp
 comp-content
 ()
 (div
  {:style {:background-color :white}}
  (div
   {:style {:padding 16, :max-width 600, :margin :auto, :font-size 16}}
   (comp-md-block (inline-resource "videos.md") {:style {}})
   (=< nil 40)
   (comp-md-block (inline-resource "sites.md") {:style {}}))))

(defcomp
 comp-footer
 ()
 (div
  {:style {:background-color "rgb(102,102,102)", :padding "32px 16px"}}
  (div
   {:style {:max-width 600, :margin :auto}}
   (a
    {:href "https://github.com/fp-china/fp-china.org",
     :target "_blank",
     :inner-text "Site on GitHub",
     :style {:text-decoration :none, :color (hsl 240 80 90)}}))))

(defcomp
 comp-header
 ()
 (div
  {:style {:padding "32px 16px", :background-color "rgb(102,102,102)", :font-size 24}}
  (div
   {:style (merge ui/row-parted {:max-width 600, :margin :auto})}
   (<> "函数式编程中文社区" {:color :white}))))

(defcomp
 comp-container
 (reel)
 (let [store (:store reel), states (:states store)]
   (div
    {:style (merge ui/global)}
    (comp-header)
    (comp-content)
    (comp-footer)
    (when dev? (cursor-> :reel comp-reel states reel {})))))
