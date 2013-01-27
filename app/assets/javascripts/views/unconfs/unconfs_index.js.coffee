class Unconf.Views.UnconfsIndex extends Backbone.View
  el: '.application'

  template: JST['unconfs/index']

  render: ->
    if Unconf.loggedIn()
      console.log "X:#{Unconf.session.attributes.info.channel_title}"
      $(@el).html(@template(userName: Unconf.session.attributes.info.channel_title))
    else
      $(@el).html(@template)
    this
