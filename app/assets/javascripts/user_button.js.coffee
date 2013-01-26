class Unconf.Views.UserButton extends Backbone.View
  el: '.user-button'

  template: JST['partials/user_button']

  events:
    'click a.log-out-link': 'logOut'

  render: ->
    $(@el).html @template
    this

  logOut: ->
    if Unconf.session?
      Unconf.session.logOut()