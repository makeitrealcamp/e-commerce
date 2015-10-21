Rails.application.routes.draw do  
  root "pages#home"

  devise_for :users

  resources :products, only: [:index, :show]
  resources :orders, only: [:index]
end
