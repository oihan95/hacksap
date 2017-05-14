Rails.application.routes.draw do
	root :to => "index#index", :id => '1'
	get  '/signup',  to: 'users#new'
	post '/signup',  to: 'users#create'
	resources :users
end
