Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.
  root 'welcome#home'
  get "/collection", to: "welcome#index", as: "collection_path"

  get "/businesses", to: "businesses#index", as: "business_path"
  get "/businesses/new", to: "businesses#new", as: "new_business_path"
  post "/businesses/new", to: "businesses#new"
  get "/businesses/:id", to: "businesses#show", as: "show_business_path"
  get "/signup", to: "users#new", as: 'new_user_path'

  resources :users
  resources :categories
  resources :businesses

  get "/users/:id", to: "users#show", as: 'users_path'
  get "/login", to: "sessions#new", as: 'login_path'
  post "/login", to: "sessions#create"
  delete '/logout', to: "sessions#destroy", as: 'logout_path'
  get '/logout', to: "sessions#destroy"
  resources :sessions

  

end
