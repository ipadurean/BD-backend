Rails.application.routes.draw do
  resources :flat_rates
  resources :trips
  resources :drivers
  resources :users, only: [:create]
  post '/auth', to: 'authentication#login'
  get '/current_user', to: 'authentication#profile'
  get '/*a', to: 'application#not_found'
   

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
