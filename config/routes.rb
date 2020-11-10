Rails.application.routes.draw do
  get 'carts/show'
  resources :products
  
  resources :stores, only:[:index, :show]
  resources :order_items
  resource :carts, only:[:show]
  
  root 'stores#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
