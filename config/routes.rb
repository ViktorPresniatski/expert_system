Rails.application.routes.draw do
  devise_for :users
  resources :categories, only: [:index]
  resources :problem_requests, only: [:index, :show]
end
