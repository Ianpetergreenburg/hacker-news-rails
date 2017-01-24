require 'rails_helper'

describe User do
  describe 'validations' do
    subject(:user) { FactoryGirl.create(:user) }

    it 'should have a username' do
      should validate_presence_of :username
      should validate_uniqueness_of :username
    end

    it 'should have a email' do
      should validate_presence_of :email
      should validate_uniqueness_of :email
    end

    it 'should have a secure password' do
      should have_secure_password
    end
  end

  describe 'assocations' do
    let(:user_with_posts) { FactoryGirl.create(:user_with_posts) }

    it 'should have many posts' do
      expect(user_with_posts.posts.length).to eq 5
      should have_many :posts
    end
  end
end
