Rails.application.routes.draw do
  devise_for :users
	resources :categories, only: [:index]
end
