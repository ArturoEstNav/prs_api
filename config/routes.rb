Rails.application.routes.draw do
  root to: 'pages#home'
  get 'pages/contributions'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bridges, only: [:new, :create, :edit, :update]
  resources :bodies, only: [:new, :create, :edit, :update]
  resources :electronic_spec_lists, only: [:new, :create, :edit, :update]
  resources :guitars, only: [:new, :create, :edit, :update]
  resources :necks, only: [:new, :create, :edit, :update]
  resources :pickups, only: [:new, :create, :edit, :update]
  resources :tuners, only: [:new, :create, :edit, :update]
end
