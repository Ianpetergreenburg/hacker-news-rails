class PostsController < ApplicationController
  include SessionHelper

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @comment = Comment.new
    @post = get_post
  end

  def create
    @post = Post.new(post_params)
    @post.user = session_user
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def destroy
    @post = get_post
  end


  def edit
    @post = get_post
  end

  def update
    @post = get_post
  end

  private

  def get_post
    Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :link)
  end

end
