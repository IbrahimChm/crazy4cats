Rails.application.routes.draw do
  resources :users, only: [:show]
  resources :posts, only: [:index, :show] do
    resources :reactions, only: [:create]
    resources :comments, only: [:create]
  end
  root 'posts#index'
end