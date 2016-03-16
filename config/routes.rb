Rails.application.routes.draw do
  root to: 'pages#home'

  get 'components', to: "pages#components"

  devise_for :users

  resources :gardens, only: [:index, :show] do
    resources :allotments, only: [:new, :create]
  end

  # resources :allotments, only: [] do
  #   resources :garden_reviews, only: [:new, :create]
  # end

  resources :allotments, only: [] do
    resources :user_reviews, only: [:show]
  end

  resources :users, only: [:index, :show] do
    resources :allotments, only: [:index] do
      member do
        patch :cancel
      end
    end
  end

  resource :profile, only: [:show]

  namespace :owner do
    resource :garden

    resources :allotments, only: [:index] do
      member do
        patch :accept
        patch :cancel
      end
    end
  end
end
