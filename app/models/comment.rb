class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :commentable, polymorphic: true

  has_many :comments, as: :commentable
  has_many :votes, as: :commentable

  validates :body, :user_id, :commentable_id, :commentable_type, presence: true
end
