Rails.application.routes.draw do
	root :to => "index#index", :id => '1'
	get 'users/new'
	resources :users
	get  '/signup',  to: 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
