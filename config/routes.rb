Rails.application.routes.draw do
  root 'main#index'


  get 'signup' => 'users#new', as: :new_user
  post 'signup' => 'users#create', as: :users

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'


  resources :posts
  resources :comments

end
