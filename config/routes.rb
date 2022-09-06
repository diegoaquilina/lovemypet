Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => 'registrations'}
  root to: "pages#home"

  require "sidekiq/web"
  authenticate :user, ->(user) { user.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end
  
  # VERIFICAR ROTAS:

  resources :pets do
    resources :vaccines, only: [:show]
    resources :appointments, only: [:show]
    resources :medications, only: [:show]
    resources :baths, only: [:show]
    resources :foods, only: [:show]
  end
  # resources :health, only: [:index, :show]

  resources :appointments, only: [:new, :create, :index, :edit, :update, :destroy]
  resources :baths, only: [:new, :create, :index, :edit, :update, :destroy]
  resources :foods, only: [:new, :create, :index, :edit, :update, :destroy]
  resources :vaccines, only: [:new, :create, :index, :edit, :update, :destroy]
  resources :medications, only: [:new, :create, :index, :edit, :update, :destroy]


  get '/profile', to: 'pages#profile', as: 'profile'
  # get '/profile/:id', to: 'pages#profile', as: 'profile_show'


  # get 'food/index'
  # get 'bath/new'
  # get 'bath/index'
  # get 'bath/show'
  # get 'bath/edit'
  # get 'medications/new'
  # get 'medications/index'
  # get 'medications/edit'
  # get 'appointments/new'
  # get 'appointments/show'
  # get 'appointments/index'
  # get 'vaccines/new'
  # get 'vaccines/index'
  # get 'vaccines/destroy'
  # get 'pets/new'
  # get 'pets/index'
  # get 'pets/show'
  # get 'pets/edit'
end
