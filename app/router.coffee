app = require './app'
home = require './modules/home'

class Router extends Backbone.Router
  routes:
    '': 'home'

  initialize: ->

  home: ->
    home.view.layout.render()


module.exports = Router