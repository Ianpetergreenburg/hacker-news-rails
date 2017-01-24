require 'rails_helper'

describe PostsController do
  describe '#index' do
    let (:user) { FactoryGirl.create(:user) }
    let(:post) { FactoryGirl.create(:post) }

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
