Rails.application.routes.draw do


  resources :admins
  resources :categories
  devise_for :users
  resources :articles

  root 'welcome#index'

  get "/dashboard", to: "welcome#dashboard"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
