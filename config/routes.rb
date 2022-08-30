Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # VERIFICAR ROTAS:

  resources :pets do
    resources :vaccines
    resources :appointments
    resources :medications
    resources :baths, only: [:index, :new, :create]
    resources :foods, only: [:index, :new, :create]
  end

  resources :baths, only: [:show]
  resources :foods, only: [:show]

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
