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

    Unconf.session = new Unconf.Models.Session()
    @buildInitialPage()
    Unconf.session.fetch()

  loggedIn: ->
    Unconf.session?.valid()

  buildInitialPage: ->
    Unconf.userButton = new Unconf.Views.UserButton()
    Unconf.userButton.render()
    Unconf.userButton.listenTo(Unconf.session, 'change', Unconf.userButton.render)


$(document).ready ->
  Unconf.initialize()
