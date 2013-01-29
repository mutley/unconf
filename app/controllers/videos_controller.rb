class VideosController < ApplicationController
  before_filter :login_required

  def youtube
    respond_to do |format|
      format.html { render :text => current_user.youtube_videos }
      format.json { respond_with current_user.youtube_videos }
    end
  end
end
