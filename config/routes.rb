Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'pages#home'

  get 'components', to: "pages#components"

  get 'about', to: "pages#about"

  get 'contact', to: "pages#contact"

  devise_for :users

  resources :gardens, only: [:index, :show] do
    resources :allotments, only: [:new, :create]
  end

  resources :users, only: [:index, :show]

  namespace :user do
    resource :profile, only: [:show, :edit, :update]
    resources :allotments, only: [:index] do
      member do
        patch :cancel
      end
    resources :garden_reviews, only: [:new, :create]
    end
  end


  namespace :owner do
    resource :garden
    resource :profile, only: [:show, :edit, :update]

    resources :allotments, only: [:index, :show] do
      member do
        patch :accept
        patch :decline
      end

      resources :user_reviews, only: [:new, :create]
    end
  end
end
