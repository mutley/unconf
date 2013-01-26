class Unconf.Models.Session extends Backbone.Model

  urlRoot: '/sessions'

  valid: ->
    @id.toString.length>0

  logOut: ->
    console.log('logOut called')
    if @id?
      @destroy()
      @id = undefined
    else
      console.log "No session to destroy"
