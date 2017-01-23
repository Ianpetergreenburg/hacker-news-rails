Rails.application.routes.draw do
  resources :users do
    resource :posts, only: [:new]
  end
  resources :posts, except: [:new]
  resources :comments
  resources :votes, except: [:edit]
end
