Rails.application.routes.draw do
  resources :place_users
  resources :places
  resources :activity_registers
  resources :activities
  resources :zones
  resources :nationalities
  resources :contacts
  resources :categories
  resources :activity_types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
