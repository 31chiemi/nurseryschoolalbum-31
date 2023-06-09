Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  resources :posts, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :users, only: :show
end