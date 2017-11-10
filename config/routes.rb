Rails.application.routes.draw do
  root :to => 'problem_requests#index'

  devise_for :users
  resources :categories, only: [:index]
  resources :problem_requests, only: [:index, :show] do
    post 'add_response', to: 'problem_requests#add_response'
  end
end
