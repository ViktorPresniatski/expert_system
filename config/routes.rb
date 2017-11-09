Rails.application.routes.draw do
  scope :api do
    mount_devise_token_auth_for 'User', at: 'auth'
  	resources :categories, only: [:index]
    resources :problem_requests, only: [:index]
  end
end
