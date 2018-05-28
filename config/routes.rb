Rails.application.routes.draw do
  devise_for :users
  root to: 'books#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :books, only: [:index, :show] do
    resources :personalizations, only: [:create, :show] do
      resources :reviews, only: [:create]
    end
  end

  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end
end
