Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'courses#home'
	get 'courses', to: 'courses#index'
	resources :courses, except: [:destroy]
	get 'about', to: 'pages#about'
	get 'contact', to: 'pages#contact'
	get 'help', to: 'pages#help'
	get 'courses/new', to: 'courses#new'
	resources :students, except: [:destroy]
	get 'login', to: 'logins#new'
	post 'login', to: 'logins#create'
	delete 'logout', to: 'logins#destroy'
	post 'course_enroll', to: 'student_courses#create'

end
