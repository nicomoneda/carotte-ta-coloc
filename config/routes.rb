Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }

  root to: 'pages#home'

  resources :tasks, only: [:index, :create, :new, :show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :colocs do
    get '/join', to: 'colocs#join'
  end

  resources :carotte_cards, only: [:index]
  resources :user_tasks, only: [:edit, :update] do
    patch 'mark_as_done', on: :member
    post 'carotte', on: :member
    get 'carotte_validation', on: :member
  end


end

