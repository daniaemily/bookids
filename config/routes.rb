Rails.application.routes.draw do
  devise_for :users
  root to: 'books#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :books, only: [:index, :show] do
    resources :personalizations, only: [:create]
  end

  resources :personalizations, only: [:show] do
    resources :reviews, only: [:new, :create]
  end

  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end

  get 'dashboard', to: 'books#dashboard', as: :dashboard
end
