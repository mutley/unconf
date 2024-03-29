class ApplicationController < ActionController::Base
  respond_to :html, :json
  protect_from_forgery

  helper_method :current_user, :logged_in?, :page_title

  def sign_in_path
    '/login'
  end

protected

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def login_required
    unless logged_in?
      respond_to do |format|
        format.html { redirect_to sign_in_path }
        format.json { respond_with(nil, :status => :unauthorized) }
      end
    end
  end

end
