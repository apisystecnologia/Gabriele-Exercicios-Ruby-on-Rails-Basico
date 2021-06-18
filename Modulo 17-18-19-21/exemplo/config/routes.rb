Rails.application.routes.draw do
  get 'ordens_compra/index', as: 'orders'
  resources :produtos
  get 'produtos/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
