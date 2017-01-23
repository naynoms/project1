Rails.application.routes.draw do


  get 'session/new'

  root :to => 'pages#home'

  get '/users/edit' => 'users#edit'


  resources :users, :only => [:new, :create, :update, :index, :show ]


  get '/login' => 'session#new'
  post 'login' => 'session#create'
  delete '/login' => 'session#destroy'


end
