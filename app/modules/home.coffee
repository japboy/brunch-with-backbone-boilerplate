app = require '../app'
model = require '../model'
view = require '../view'
template_layout = require '../templates/home/layout'
template_view = require '../templates/home/inner'

class Home extends model.Model


class Homes extends model.Collection
  model: Home


class OuterView extends view.View
  template: template_layout


class InnterView extends view.View
  el: '#inner'
  template: template_view


layout = new view.Layout
  views:
    '#main': new OuterView
      views:
        '#inner': new InnterView()

home =
  view:
    layout: layout

module.exports = home