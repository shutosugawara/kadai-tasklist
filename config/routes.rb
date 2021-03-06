Rails.application.routes.draw do
  
  get 'users/new'
  root to: "tasks#index"
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :tasks
  
  get "signup" , to: "users#new"
  resources :users, only: [:new, :create]
end
