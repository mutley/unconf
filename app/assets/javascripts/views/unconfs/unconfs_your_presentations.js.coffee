class Unconf.Views.UnconfsYourPresentations extends Backbone.View
  el: '.application'

  template: JST['unconfs/your_presentations']

  render: ->
    $(@el).html(@template)
    this
