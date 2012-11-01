Backbone.LayoutManager.configure
  manage: true

app = {}

_.extend app, {}, Backbone.Events
###
_.extend app,

  module: (additionalProps) ->
    _.extend { Views: {} }, additionalProps

  useLayout: (options) ->
    layout = new Backbone.Layout _.extend
      el: 'body'
    , options

    return @layout = layout

, Backbone.Events
###

module.exports = app