Rails.application.routes.draw do

  get 'tickets/complain'
  get 'tickets/maintenance'
  get 'tickets/other'
  get 'tickets/order'

  root 'home#index'

  resources :properties  do
  	resources :flats do
      resources :ownerhistories 
      resources :tickets, only: [:new, :create]  
      end
    resources :documents, only: [:index, :new, :create, :destroy]
    resources :whiteboards
  end
  resources :cpanel do
    resources :posts
    resources :postflats
  end
  
  resources :tickets do
    resources :replies
    member do 
      get :flop
    end
  end

  resources :search

  devise_for :users,  :controllers => { :registrations => 'registrations'}
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
