Rails.application.routes.draw do
  root to: 'tasks#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get "logout", to: "sessions#destroy"
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  resources :tasks
  resources :users, only: [:index, :show, :new, :create]
end