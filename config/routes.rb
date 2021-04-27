Rails.application.routes.draw do
  root :to => 'pages#home'

  get '/customer_login' => 'customer_session#new'
  post '/customer_login' => 'customer_session#create'
  delete 'customer_login' => 'customer_session#destroy'

  get '/driver_login' => 'driver_session#new'
  post '/driver_login' => 'driver_session#create'
  delete 'driver_login' => 'driver_session#destroy'

  resources :customers
  resources :drivers
  resources :bookings, :only => [:index, :new, :create, :show]
end
