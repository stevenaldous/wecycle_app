Rails.application.routes.draw do
  root 'main#index'


  get 'signup' => 'users#new', as: :new_user
  post 'signup' => 'users#create', as: :users

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'


  get 'calendars' => 'calendars#index'
  post 'calendars' => 'calendars#find'


  resources :posts do
   resources :comments, :only => [:create, :index, :new]
  end



end
