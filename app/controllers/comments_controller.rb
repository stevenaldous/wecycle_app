class UsersController < ApplicationController

def index
  @comment = Comment.all.order('updated_at ASC')
end
def show
  @comment = Comment.find params[:id]
end
def create
  Comment.create comment_params
end
def destroy
  Comment.find(params[:id]).delete
end


private
  def comment_params
    params.require(:comment).permit(:comm)
  end

end