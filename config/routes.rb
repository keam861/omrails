Rails.application.routes.draw do
  resources :casas
  resources :reporte_mi_propiedads
  resources :mi_propiedads
  resources :tweets
  ActiveAdmin.routes(self)
  devise_for :users
  as :user do
  	get "login" => 'devise/sessions#new'
  	delete "signout" => 'devise/sessions#destroy'
  	get "signup" => 'devise/registrations#new'
  end
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
