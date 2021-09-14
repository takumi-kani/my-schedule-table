Rails.application.routes.draw do
  root to: 'schedules#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  devise_for :admin_users, controllers: {
    sessions: 'admin_users/sessions',
    passwords: 'admin_users/passwords',
    registrations: 'admin_users/registrations'
  }

  resources :users, only: [:edit, :update]

  resources :schedules
end
