Rails.application.routes.draw do
  root to: 'restaurants#index'
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
  resources :restaurants, only: [:index, :new, :create, :show]
end
