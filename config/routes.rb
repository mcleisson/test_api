Rails.application.routes.draw do
  resources :cart_items
  resources :carts
  resources :medicines
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
