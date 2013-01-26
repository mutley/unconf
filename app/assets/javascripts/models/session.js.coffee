class Unconf.Models.Session extends Backbone.Model

  urlRoot: '/sessions'

  valid: ->
    !!@id

  logOut: ->
    console.log('logOut called')
    if @id?
      @destroy()
      @id = undefined
      @trigger("change")
    else
      console.log "No session to destroy"
