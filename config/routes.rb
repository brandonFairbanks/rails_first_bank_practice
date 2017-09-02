Rails.application.routes.draw do
#   get 'profiles/index'

#   get 'profiles/show'

#   get 'profiles/new'

    root to: 'accounts#index'
    
    devise_for :users, controllers: {
        registrations: 'users/registrations'
    }

    resources :accounts do
        resources :profiles  
    end
	
end