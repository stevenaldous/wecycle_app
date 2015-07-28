class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :current_user

  def check_auth
    unless current_user
      redirect_to login_path
    end
  end

  def check_no_auth
    redirect_to root_path if current_user
  end
  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end









end
