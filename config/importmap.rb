# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "trix" # @2.1.12
pin "@rails/actiontext", to: "@rails--actiontext.js" # @8.0.100
pin "swiper" # @11.1.15
pin "el-transition" # @0.0.7
