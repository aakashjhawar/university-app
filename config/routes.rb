Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'courses#index'
	get 'about', to: 'pages#about'
	get 'courses/new', to: 'courses#new'
	resources :students, except: [:destroy]

end
