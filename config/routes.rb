Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  root to: "lists#index"

  resources :lists do
    resources :bookmarks
  end

  resources :bookmarks, only: :destroy

  # Defines the root path route ("/")
  # root "posts#index"
end

  # resources :bookmarks do
  #   resources :list_id, only: [:show]
  #   resources :movie_id, only: [:show]
  # end
  # resources :lists
  # resources :movies
