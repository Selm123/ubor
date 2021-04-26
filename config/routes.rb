Rails.application.routes.draw do
  root :to => 'pages#home'
  get 'customers/new'
  get 'drivers/new'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete 'login' => 'session#destroy'

  resources :customers, :only => [:index, :new, :create]
  resources :drivers, :only => [:new, :create]
  resources :bookings, :only => [:new, :create]
end
