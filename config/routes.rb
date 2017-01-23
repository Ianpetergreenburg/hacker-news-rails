Rails.application.routes.draw do
  root to: 'posts#index'

  get '/login' => 'sessions#login_form'
  post '/login' => 'sessions#login'
  get '/logout' => 'sessions#logout'

  resources :users do
    resource :posts, only: [:new]
  end
  resources :posts, except: [:new]
  resources :comments
  resources :votes, only: [:create, :destroy]
end
