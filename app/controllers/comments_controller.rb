class CommentsController < ApplicationController



def index
  @comments = Comment.all.order('updated_at ASC')
end
def show

end
def new
  @comment = Comment.new
end



def create

  @comment = Comment.create(comment_params)
  redirect_to comments_path


end

def destroy
  Comment.find(params[:id]).delete
  redirect_to posts_path
end


private
  def comment_params
    params.require(:comment).permit(:comm, :user_id, :post_id)
  end


end