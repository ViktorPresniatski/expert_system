Rails.application.routes.draw do
  devise_for :users
	resources :categories, only: [:index]
	resources :questionnares, only: [:show]
  resources :problem_requests, only: [:index]
end
