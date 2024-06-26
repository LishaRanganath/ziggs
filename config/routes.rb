Rails.application.routes.draw do
  root 'main#index'

  resources :main do
    resources :restaurants
  end
  get 'menu_item/new/:restaurant_id', to: 'menu_item#new', as: 'new_menu_item'
  post 'menu_item/create/:restaurant_id', to: 'menu_item#create', as: 'create_menu_item'
  resources :menu_item

  get 'profile',to: 'profile#show'

  # get 'main',to: 'main#new'
  # get 'menu_item',to:'menu_item#show'
  post 'menu_item',to:'cart_item#add_cart_items'

  get 'cart_item', to: 'cart_item#show'

  devise_for :user, controllers: { registrations: 'user/registrations'}

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
