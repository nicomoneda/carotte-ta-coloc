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

  resources 'shop', controller: 'fun_cards', only: [:index, :show] do
    resources :consommations, only: :create
  end
  # get 'shop', to: 'fun_cards#index'
  # get 'shop/:id', to: 'fun_cards#show', as: :shop_fun_card
  # post 'shop/:id/buy', to: 'consommations#buy', as: :buy_fun_card

end

