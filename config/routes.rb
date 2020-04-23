Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'
  root "messages#index"
  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :create]
  root "messages#index"
  resources :groups, only: [:index, :new, :create, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
