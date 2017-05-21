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

  delete 'produktuas/:id', to: 'produktua#destroy'
  get '/produktuas', to: 'produktua#menu'
  get '/produktuas/new', to: 'produktua#new'
  post '/produktuas/new', to: 'produktua#create'
  get '/produktuas/:id', to: 'produktua#show', as: 'produktua'
  get '/produktuas/:id/edit', to: 'produktua#edit'
  resources :produktua
end
