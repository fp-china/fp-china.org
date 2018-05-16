
(ns app.comp.container
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.macros
             :refer
             [defcomp cursor-> action-> mutation-> <> div button textarea span a]]
            [verbosely.core :refer [verbosely!]]
            [respo.comp.space :refer [=<]]
            [reel.comp.reel :refer [comp-reel]]
            [respo-md.comp.md :refer [comp-md comp-md-block]]
            [app.schema :refer [dev?]]))

(defcomp
 comp-content
 ()
 (div
  {:style {:background-color :white}}
  (div
   {:style {:padding 16, :max-width 600, :margin :auto, :font-size 16}}
   (comp-md-block
    "导航\n\n### Clojure\n\n* [中文论坛](http://clojure-china.org)\n* 微信群(联系 `jiyinyiyong`)\n* [导航页面](http://map.clj.im)\n* QQ 群 130107204\n* [英文 Discord](https://discord.gg/X6yrEjc)\n* [英文 Slack](http://clojurians.net/)\n* [微博机器人](http://weibo.com/clojurechina)\n\n### Haskell\n\n* QQ 群 72874436\n* 微信群(联系 `jiyinyiyong`)\n* [英文分类 Slack](http://fpchat.com/)\n* [中文子论坛](http://clj.im/c/haskell)\n* [中文论坛](http://a.haskellcn.org)\n* [HaskellCNOrg 微博](http://weibo.com/haskellcnorg)\n* [微博机器人](http://weibo.com/haskellchina)\n\n### Elixir\n\n* 微信群(联系 `jiyinyiyong`)\n* [中文论坛](http://elixir-cn.com)\n* QQ 群 249122869\n* [英文论坛](https://elixirforum.com/)\n* [英文 Slack](http://elixir-slackin.herokuapp.com/)\n* [微博机器人](http://weibo.com/elixircn)\n\n### ReasonML, Elm, BuckleScript 群\n\n* 微信群(联系 `jiyinyiyong`)\n* [英文论坛](https://reasonml.chat/)\n* [英文 Slack](https://elmlang.herokuapp.com/)\n\n### WebAssembly\n\n* 微信群(联系 `jiyinyiyong`)\n* [分类论坛](https://www.w3ctech.com/category/18)\n\n### Scala\n\n* 微信群(联系 `jiyinyiyong`)\n* QQ 群 231809997 (高级群, 需验证)\n\n### LISP\n\n* LISP 微信群(联系 `jiyinyiyong`)\n* \"Expert Scheme\" QQ 群 523791077\n\n### FP 水群\n\n* [中文 Discord](https://discord.gg/CXkwkFC)\n* [英文 Discord](https://discord.gg/nntGvbh)\n* 微信群(灌水群, 需要加入微信联系 `jiyinyiyong`)\n\n### 其他\n\n欢迎反馈...\n"
    {:style {}}))))

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
