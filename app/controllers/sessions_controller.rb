class SessionsController < ApplicationController

before_action :check_no_auth, except: [:destroy]


  def new
  end
  def create
    user = User.authenticate(params[:user][:email], params[:user][:password])
    if(user)
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to login_path
    end
  end
  def destroy
    session[:user_id]= nil
    redirect_to root_path
  end
end
