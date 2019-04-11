Rails.application.routes.draw do
  get 'users/:id', to: 'users#show', as: 'user'

  resources :casas
  resources :reporte_mi_propiedads
  resources :mi_propiedads
  resources :tweets
  ActiveAdmin.routes(self)
  devise_for :users
  as :user do
  	get "login", to: 'devise/sessions#new'
  	delete "signout", to: 'devise/sessions#destroy'
  	get "signup", to: 'devise/registrations#new'
  end
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
