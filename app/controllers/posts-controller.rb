class PostsController < ApplicationController

  def index
    @posts = Post.all
  end
  def show
  end
  def create
  @post = current_user.post.create post_params
  if @post.persisted?
    redirect_to root_path
  else
    render :new
  end

  def edit

  end

  def destroy
    @post = Post.find(params[:id]).delete
  end



private
  def post_params
    params.require(:post).permit(:desc,:image)
  end


end
