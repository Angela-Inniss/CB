Rails.application.routes.draw do
  devise_for :users
  root to: 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :services
  resources :reviews, only: [:create,:destroy,]
  resources :messages, only: [:index, :new, :create]

  get "/:page" => "static_pages#show"
 end
#root      'home#index'
