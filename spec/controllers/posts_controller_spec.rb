require 'rails_helper'

describe PostsController do
  describe '#index' do
    let (:user) { User.create(username: 'user', email: 'email@me.com', password: 'password')}
    let(:post) { Post.create(title: 'title', link: 'content', user_id: user.id) }

    it 'should go to an index' do
      post.save
      get :index

      expect(assigns(:posts).length).to eq 1
    end
  end

  describe '#new' do

  end

  describe '#show' do

  end

  describe '#create' do

  end

  describe '#destroy' do

  end

  describe '#update' do

  end

  describe '#edit' do

  end


end
