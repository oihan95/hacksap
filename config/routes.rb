Rails.application.routes.draw do
  get 'sessions/new'

	root :to => "sessions#new", :id => '1'
	get  '/signup',  to: 'users#new'
	post '/signup',  to: 'users#create'
	get    '/login',   to: 'sessions#new'
  	post   '/login',   to: 'sessions#create'
  	get	'/menu', to: 'menu#menu'
  	get 'forbiddenlogin', to: 'shared#forbiddenlogin'
  	delete '/logout',  to: 'sessions#destroy'
  	get '/logout',  to: 'sessions#destroy'
	resources :user

  get 'products', to: 'products#menu'
  get '/products/new', to: 'products#new'
  post '/products/new', to: 'product#new'
end
