Rails.application.routes.draw do
  root :to => 'problem_requests#index'

  devise_for :users
  resources :categories, only: [:index]
<<<<<<< HEAD
  resources :problem_requests, only: [:index, :show] do
    post 'add_response', to: 'problem_requests#add_response'
  end
=======
  resources :problem_requests, only: [:index, :show]
  resources :questionnares, only: [:new, :create, :show]
>>>>>>> 1fd2651c299da77581167eb68b5c358d47134085
end
