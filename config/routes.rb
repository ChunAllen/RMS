Rms::Application.routes.draw do
  devise_for :users

  root :to => 'homes#index'

  resources :clients
  resources :brands
  resources :branches
  resources :users
  resources :user_roles
  resources :permissions

  match '/setup', :to => "clients#index"
  match '/organization', :to => "clients#index"
end
