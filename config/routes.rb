Rails.application.routes.draw do
  root 'categories#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  resources :categories
  resources :discussions
  resources :posts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
