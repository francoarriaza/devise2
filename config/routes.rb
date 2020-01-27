Rails.application.routes.draw do
  devise_for :users
  get 'users/new'

  resources :histories

  get 'users/sign_up', to: "users#new"
  post 'users', to: "users#create"

  resources :sessions, only: [:create, :destroy]
  
  root "histories#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
