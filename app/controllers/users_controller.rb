class UsersController < ApplicationController
  def index
  end
  def new
    @user=User.new
  end
def create
  @user = User.create user_params
  redirect_to root_path
end


private
  def user_params
    params.require(:user).permit(:email,:username,:password)

  end

end
