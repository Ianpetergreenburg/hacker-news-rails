class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :commentable, polymorphic: true

  has_many :comments, as: :commentable
  has_many :votes, as: :commentable

  validates :body, :user_id, :commentable_id, :commentable_type, presence: true

  def post
    current_comment = self.commentable
    until current_comment.is_a? Post
      current_comment = current_comment.commentable
    end
    current_comment
  end
end
