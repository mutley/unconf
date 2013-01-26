window.Unconf =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    screenWidth = screen.width
    screenHeight = screen.height
    console.log "Screen Width: #{screenWidth}"
    console.log "Screen Height: #{screenHeight}"

    Unconf.router = new Unconf.Routers.App
    Backbone.history.start pushState: true

    @session = new Unconf.Models.Session()
    @session.fetch()

  sendToLogin: ->
    @router.navigate '/login' , trigger: true

  loggedIn: ->
    Unconf.session.valid()

$(document).ready ->
  Unconf.initialize()
