Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }

  root to: 'sessions#new'

  resources :tasks, only: [:index, :create, :new]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
