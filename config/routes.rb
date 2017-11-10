Rails.application.routes.draw do
  root :to => 'problem_requests#index'

  devise_for :users
  resources :categories, only: [:index]
  resources :problem_requests, only: [:index, :show]
  resources :questionnares, only: [:new, :crerate, :show]
end
