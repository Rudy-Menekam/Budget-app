Rails.application.routes.draw do
  devise_for :users
  resources :deal_groups
  resources :groups do
   resources :deals 
  end
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "splash#index", as: :unauthenticated_root
  # root "users#index", as: :authenticated_root
end
