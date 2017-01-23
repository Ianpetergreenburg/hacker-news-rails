require 'bcrypt'

class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :votes
  has_secure_password

  validates :username, :email, presence: true, uniqueness: true
end
