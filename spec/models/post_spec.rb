require 'rails_helper'

describe Post do
  describe 'validations' do
    let (:user) { FactoryGirl.create(:user) }
    let(:post) { FactoryGirl.create(:post) }
    it 'should have a title' do
      expect(post.title).to eq 'title'

      expect(post.persisted?).to be true
      should validate_presence_of :title
    end

    it 'should have a link' do
      should validate_presence_of :link
    end

    it 'should have a user_id' do
      should validate_presence_of :user_id
    end
  end

  describe 'assocations' do
    it 'should have a user' do
      should belong_to :user
    end

    it 'should have many comments' do
      should have_many :comments
    end
  end
end
