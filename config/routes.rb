Rails.application.routes.draw do
  root 'main#index'
  
  resources :main
  
  get 'profile',to: 'profile#show'

  # get 'main',to: 'main#new'
  get 'menu_item',to:'menu_item#list'
  post 'menu_item',to:'cart_item#add_cart_items'

  get 'cart_item', to: 'cart_item#show'
  
  devise_for :user, controllers: { registrations: 'user/registrations'}

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
