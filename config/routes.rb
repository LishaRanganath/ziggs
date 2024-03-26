Rails.application.routes.draw do
  get 'menu_item',to:'menu_item#list'
  get 'profile',to: 'profile#show'

 post 'menu_item',to:'cart_item#add'
  root 'main#index'
  devise_for :user, controllers: { registrations: 'user/registrations'}

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
