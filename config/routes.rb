Rails.application.routes.draw do
  resources :main
  get 'menu_item',to:'menu_item#list'
  get 'profile',to: 'profile#show'

  # get 'main',to: 'main#new'

 post 'menu_item',to:'cart_item#add'
  root 'main#index'
  devise_for :user, controllers: { registrations: 'user/registrations'}

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
