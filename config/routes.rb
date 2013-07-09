R20130214Cookbook::Application.routes.draw do
  get "sessions/new"

  get "sessions/create"

  get "sessions/destroy"

  resources :books, :recipes, :ingredients

  get '/login', to: 'sessions#new'

  resources :sessions, only:[:create, :destroy]
  resources :users

  root to: 'recipes#index'
end
