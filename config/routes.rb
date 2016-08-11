Rails.application.routes.draw do
  resources :vehicle_models
  resources :vehicle_makes
  resources :vehicle_types
  resources :orders
  devise_for :people
  devise_for :drivers
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
