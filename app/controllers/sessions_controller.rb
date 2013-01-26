class SessionsController < ApplicationController
  before_filter :login_required, :except => :create
  respond_to :json, :html

  def create
    user = User.find_or_create_by_auth_hash(auth_hash)
    session[:user_id] = user.id
    respond_to do |format|
      format.html { redirect_to '/' }
      format.json { respond_with(user, location => nil, :status => :created) }
    end

  end

  def show
    respond_to do |format|
      format.html { redirect_to '/' }
      format.json { respond_with(user, location => nil, :status => :ok) }
    end
  end
  alias_method :index, :show

  def failure
    redirect_to login_path, alert: "Authentication failed, please try again."
  end


  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end

