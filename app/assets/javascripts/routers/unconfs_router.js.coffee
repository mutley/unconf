class Unconf.Routers.App extends Backbone.Router
  routes:
    '': 'index',
    'your-presentations': 'yourPresentations',
    'add-presentation': 'addPresentation',

  index: ->
    new Unconf.Views.UnconfsIndex().render()

  yourPresentations: ->
    new Unconf.Views.UnconfsYourPresentations().render()

  addPresentation: ->
    new Unconf.Views.UnconfsAddPresentation().render()

