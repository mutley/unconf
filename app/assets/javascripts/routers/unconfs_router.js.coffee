class Unconf.Routers.App extends Backbone.Router
  routes:
    '': 'index',
    'login': 'login',

  index: ->
    view = new Unconf.Views.UnconfsIndex()
    $('#wrapper').html(view.render().el)

  login: ->
    view = new Unconf.Views.UnconfsIndex()
    # view = new Unconf.Views.UnconfLogin()
    $('#wrapper').html(view.render().el)
