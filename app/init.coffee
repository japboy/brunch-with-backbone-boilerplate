app = require './app'
Router = require './router'

app.router = new Router()

Backbone.history.start
  pushState: true
