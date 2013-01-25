class Unconf.Views.UnconfsIndex extends Backbone.View

  tagName: 'div'
  className: 'home something'

  template: JST['unconfs/index']

  render: ->
    $(@el).html(@template)
    this
