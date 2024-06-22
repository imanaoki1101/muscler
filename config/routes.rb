Rails.application.routes.draw do
  devise_for :users
  resources :top
  root 'top#index'
  resources :goals
  resources :jobs
  resources :posts
  resources :users
  resources :users, only: [:show]
  get 'tweets/:tweet_id/likes' => 'likes#create'
  get 'tweets/:tweet_id/likes/:id' => 'likes#destroy'
  resources :tweets do
  resources :likes, only: [:create, :destroy]
  resources :comments, only: [:create]
end
end