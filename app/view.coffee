class Layout extends Backbone.Layout


class View extends Backbone.LayoutView
  render: ->
    console.debug "Rendering #{@constructor.name}"
    console.debug @$el
    console.debug @template()
    @$el.html @template()
    @


view =
  Layout: Layout
  View: View

module.exports = view