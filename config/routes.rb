Rails.application.routes.draw do
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'

	get'productinfo/new'
	get'productinfo/home'
	root'productinfo#home'

	match':controller(/:action(/:id))', :via=>[:get,:post]
	 resources :productinfo
	resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
