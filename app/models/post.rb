class Post < ActiveRecord::Base
  belongs_to :user

  has_many :comments, as: :commentable
  has_many :votes, as: :commentable

  validates :user_id, :title, :link, presence: true
end
