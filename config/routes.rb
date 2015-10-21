Rails.application.routes.draw do  
  root "pages#home"

  devise_for :users

  resources :products, only: [:index, :show]
  resources :orders, only: [:index]
  resources :cart_items, only: [:index, :create, :update, :destroy]

  namespace :admin do
    resources :categories, except: [:show]
    resources :products
    resources :orders, only: [:index, :edit, :update]  
  end
end
