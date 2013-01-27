class Unconf.Views.UserButton extends Backbone.View
  el: '.user-button'

  template: JST['partials/user_button']

  events:
    'click a.log-out-link': 'logOut'
    'click a.home-link': ->
      Unconf.router.navigate '/', trigger: true
    'click a.add-presentation-link': ->
      Unconf.router.navigate '/add-presentation', trigger: true
    'click a.your-presentations-link': ->
      Unconf.router.navigate '/your-presentations', trigger: true

  render: ->
    $(@el).html @template
    this

  logOut: ->
    if Unconf.session?
      Unconf.session.logOut()