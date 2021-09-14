Rails.application.routes.draw do
  root to: 'schedules#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  resources :users, only: [:edit, :update]
end
