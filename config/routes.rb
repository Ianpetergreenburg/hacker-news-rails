Rails.application.routes.draw do
  root to: 'posts#index'

  resources :users do
    resource :posts, only: [:new]
  end
  resources :posts, except: [:new]
  resources :comments
  resources :votes, only: [:create, :destroy]
end
