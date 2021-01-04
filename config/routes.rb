Rails.application.routes.draw do
  resources :list_locations
  resources :favorite_lists
  resources :comments
  resources :locations
  resources :users
  post '/signup', to: 'user#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
