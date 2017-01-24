Rails.application.routes.draw do


  root :to => 'pages#home'

  get '/users/edit' => 'users#edit'


  resources :users, :only => [:new, :create, :update, :index, :show ]

  resources :boards, :only => [:index, :show, :new, :create, :edit, :update, :destroy]
  get '/myboards' => 'boards#my_boards', :as => 'my_boards'

  resources :places, :only => [:index, :show, :edit, :update, :new, :create, :destroy]

  resources :uploads, :only => [:index, :show, :edit, :update, :new, :create, :destroy]

``
  get '/login' => 'session#new'
  post 'login' => 'session#create'
  delete '/login' => 'session#destroy'


end
