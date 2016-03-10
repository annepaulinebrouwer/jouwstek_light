Rails.application.routes.draw do
  root to: 'pages#home'

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

  resources :users, only: [:show]

  resource :profile, only: [:show]

  namespace :owner do
    resource :garden

    resources :allotments, only: [] do
      member do
        patch :accept
        patch :decline
      end
    end
  end
end
