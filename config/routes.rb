Rails.application.routes.draw do
	resources :categories, only: [:index]
	resources :questionnares, only: [:show]
end
