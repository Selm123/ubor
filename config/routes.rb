Rails.application.routes.draw do
  root :to => 'pages#home'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete 'login' => 'session#destroy'

  resources :customers
  resources :drivers
  resources :bookings, :only => [:index, :new, :create, :show]
end
