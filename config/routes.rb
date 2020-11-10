Rails.application.routes.draw do
  resources :products
  
  resources :stores, only:[:index, :show]
  
  root 'stores#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
