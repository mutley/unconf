class Unconf.Views.UnconfsIndex extends Backbone.View
  el: '.application'

  template: JST['unconfs/index']

  render: ->
    $(@el).html(@template)
    this
