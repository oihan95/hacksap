Rails.application.routes.draw do
	root :to => "index#index", :id => '1'
	get  '/signup',  to: 'users#new'
	post '/signup',  to: 'users#create'
	get    '/login',   to: 'sessions#new'
  	post   '/login',   to: 'sessions#create'
  	get	'/menu', to: 'menu#menu'
  	get 'forbiddenlogin', to: 'shared#forbiddenlogin'
  	delete '/logout',  to: 'sessions#destroy'
	resources :users
end
