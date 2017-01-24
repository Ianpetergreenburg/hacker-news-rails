require 'rails_helper'

feature 'the homepage' do
  let (:user) { User.create(username: 'user', email: 'email@me.com', password: 'password')}
    let(:post) { Post.create(title: 'title', link: 'content', user_id: user.id) }
  scenario 'a user can see all posts' do
    post.save

    visit('/posts')

    #save_and_open_page

    expect(page).to have_link post.title
  end
end
