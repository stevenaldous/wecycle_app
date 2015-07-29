class UsersController < ApplicationController
  def index
  end
  def new
    @user=User.new
  end
def create
  @user = User.create user_params
  if @user.persisted?
    flash[:sucess] = "Welcome to WEcycle! Login below."
    redirect_to login_path
  else
    flash[:danger] = @user.errors.full_messages.uniq.to_sentence
    render :new
  end
end


private
  def user_params
    params.require(:user).permit(:email,:username,:password)

  end

end
