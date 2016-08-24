Rails.application.routes.draw do

  get 'tickets/complain'
  get 'tickets/maintenance'
  get 'tickets/other'

  root 'home#index'

  resources :properties do
  	resources :flats
    resources :documents, only: [:index, :new, :create, :destroy]
  end
  resources :cpanel do
    resources :posts
    resources :postflats
  end
  
  resources :tickets do
    resources :replies
  end

  devise_for :users,  :controllers => { :registrations => 'registrations'}
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
