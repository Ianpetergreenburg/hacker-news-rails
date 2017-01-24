require 'rails_helper'

feature 'the homepage' do
  let (:user) { FactoryGirl.create(:user) }
  let(:post) { FactoryGirl.create(:post) }

  scenario 'a user can see all posts' do
    post.save

    visit('/posts')

    save_and_open_page

    expect(page).to have_link post.title
  end
end
