class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :voteable, polymorphic: true

  validates :user_id, :voteable_id, :voteable_type, presence: true
  validates :user_id, uniqueness: {scope: [:voteable_type, :voteable_id]}
end
