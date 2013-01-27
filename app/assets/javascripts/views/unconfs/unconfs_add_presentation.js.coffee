class Unconf.Views.UnconfsAddPresentation extends Backbone.View
  el: '.application'

  template: JST['unconfs/add_presentation']

  render: ->
    $(@el).html(@template)
    this
