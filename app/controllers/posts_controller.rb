class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
  end

  def create
    uploaded_file_path = params[:post][:image].path
    cloudinary_file = Cloudinary::Uploader.upload(uploaded_file_path)
    @post = current_user.posts.create(desc: params[:post][:desc],image: cloudinary_file['public_id'])
    redirect_to posts_path
  end

  def edit
  end

  def destroy
    @post = Post.find(params[:id]).delete
  end

end
