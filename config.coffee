###*
# Brunch configuration
# @url http://brunch.readthedocs.org/en/latest/config.html
# @author Yu Inao
###

exports.config =
  paths:
    public: 'public'
    test: 'test'
    app: 'app'
    vendor: 'vendor'
    root: './'

  files:
    javascripts:
      joinTo:
        'js/app.min.js': /^app/
        'js/vendor.min.js': /^vendor\/js/
        'test/test.js': /^test/
      order:
        before: [
          'vendor/js/console-helper.js'
          'vendor/js/jquery-1.8.2.js'
          'vendor/js/lodash-0.9.0.js'
          'vendor/js/backbone-0.9.2.js'
          'vendor/js/backbone.layoutmanager-0.7.0.js'
        ]

    stylesheets:
      joinTo: 'css/app.min.css'
      order:
        before: [
          'vendor/css/normalize-2.0.1.css'
        ]

    templates:
      joinTo:
        'js/app.min.js': /^(app\/templates)/

  notifications: true
  minify: true