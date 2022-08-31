Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => 'registrations'}
  root to: "pages#home"

  # VERIFICAR ROTAS:

  resources :pets do
    resources :vaccines
    resources :appointments, only: [:index, :new, :create]
    resources :medications
    resources :baths, only: [:index, :new, :create]
    resources :foods, only: [:index, :new, :create]
  end
  # resources :health, only: [:index, :show]


  resources :appointments, only: [:show]
  resources :baths, only: [:show]
  resources :foods, only: [:show]

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
