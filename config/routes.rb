require 'sidekiq/web'

Rails.application.routes.draw do
 
  namespace :admin do
      resources :users
      resources :posts
      resources :pages
      resources :services
      resources :notifications
      resources :announcements

      root to: "users#index"
    end
  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'
authenticate :user, lambda { |u| u.admin? } do
  mount Sidekiq::Web => '/sidekiq'

  namespace :madmin do
  end
end

  resources :notifications, only: [:index]
  resources :announcements, only: [:index]
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  resources :pages
  resources :posts
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
