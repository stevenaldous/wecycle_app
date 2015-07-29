class PostsController < ApplicationController

  def index
    @posts = Post.all.order('created_at DESC')
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
    if @post.persisted?
      flash[:success] = "Thank you for sharing!"
    redirect_to posts_path
    else
      flash[:danger] = @post.errors.full_messages.uniq.to_sentence
      render :new
    end
  end

  def update
    @post = Post.find(params[:id])
    @post.update(desc: params[:post][:desc])
    if @post.save
      flash[:success] = "Your post has been updated!"
      redirect_to posts_path
    else
      flash[:danger] = @post.errors.full_messages.uniq.to_sentence
      render:edit
    end
  end
  def edit
    @post = Post.find(params[:id])
  end


  def destroy
    @post = Post.find(params[:id]).delete
    redirect_to posts_path
  end

end
