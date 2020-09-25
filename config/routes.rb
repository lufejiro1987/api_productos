Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'categories', to: 'categories#index'
  get 'categories/:name', to: 'categories#show'
  get 'categories/:name/:products', to: 'products#index'
end
