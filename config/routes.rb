Rails.application.routes.draw do
  root 'tickets#index'

  resources :tickets

  devise_for :users, controllers: {
  sessions: 'users/sessions',
  registrations: 'users/registrations'
}



end
