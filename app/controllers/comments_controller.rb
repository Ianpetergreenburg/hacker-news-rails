class CommentsController < ApplicationController
  include SessionHelper

  def index

  end

  def new

  end

  def show

  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user = session_user
    @comment.update_attributes(commentable_params)
    @comment.save
    redirect_to posts_path
  end

  def destroy

  end


  def edit

  end

  def update

  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end

  def commentable_params
    params.permit(:commentable_id, :commentable_type)
  end
end
