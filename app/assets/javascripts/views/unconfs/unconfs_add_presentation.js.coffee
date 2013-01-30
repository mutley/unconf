class Unconf.Views.UnconfsAddPresentation extends Backbone.View
  el: '.application'

  template: JST['unconfs/add_presentation']

  render: ->
    videos = new Unconf.Collections.YoutubeVideos()
    videos.fetch().complete =>
      console.log videos.models
      $(@el).html(@template(youtube_videos: videos.models))
    this
