import { main_$x_, reload_$x_ } from "./js-out/app.main.js"

main_$x_()

if (module.hot) {
  module.hot.accept('./js-out/app.main.js', (main) => {
    reload_$x_()
  })
}
