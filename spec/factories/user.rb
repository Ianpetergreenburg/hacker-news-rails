FactoryGirl.define do
  factory :user do
    username 'user'
    email 'email@me.com'
    password 'password'

    factory :user_with_posts do

      transient do
        posts_count 5
      end

      after(:create) do |user,evaluator|
        create_list(:post, evaluator.posts_count, user: user)
      end
    end

  end
end
