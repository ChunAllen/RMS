Rms::Application.routes.draw do
  devise_for :users

  root :to => 'homes#index'

  resources :companies
  resources :restaurants
  resources :branches
  resources :users
  resources :user_roles
  resources :permissions

  match '/setup', :to => "companies#index"
  match '/organization', :to => "companies#index"
end
