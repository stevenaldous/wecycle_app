class PostsController < ApplicationController

  def index

  end
  def new
    @posts = Post.new
  end
  def show
  end
  def create
    uploaded_file = params[:user][:image].path
    cloudnary_file = Cloudinary::Uploader.upload(upload_file)



    @post = current_user.post.create post_params
    if @post.persisted?
      redirect_to root_path
    else
     render :new
    end
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
