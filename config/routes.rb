Rails.application.routes.draw do


  get 'session/new'

  root :to => 'pages#home'

  resources :users, :only => [:new, :create, :update, :index]

  get '/users/edit' => 'users#edit'
  get '/users/:id' => 'users#show'

  get '/login' => 'session#new'
  post 'login' => 'session#create'
  delete '/login' => 'session#destroy'


end
