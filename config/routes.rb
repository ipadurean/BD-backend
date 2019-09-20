Rails.application.routes.draw do
  resources :flat_rates
  resources :trips
  resources :drivers
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
