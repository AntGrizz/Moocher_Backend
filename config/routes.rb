Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :items
  resources :users, only: [:create, :index]
  resources :groups, only: [:create, :index]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  resources :rented_items
end
