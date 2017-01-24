Rails.application.routes.draw do
  root to: 'posts#index'

  get '/login' => 'sessions#login_form'
  post '/login' => 'sessions#login'
  get '/logout' => 'sessions#logout'

  resources :users
  resources :posts
  resources :comments, only: [:create, :new, :edit, :delete]
  resources :votes, only: [:create, :destroy]
end
