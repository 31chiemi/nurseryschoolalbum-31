class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]
  before_action :move_to_index, except: [:index, :show]

  def index
    @posts = Post.all.includes(:user).order("created_at DESC")
  end
  

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end

  private
  def post_params
    params.require(:post).permit(:text, {images: []}).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end