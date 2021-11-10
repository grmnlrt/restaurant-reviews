Rails.application.routes.draw do
  resources :restaurants do
    collection do
      # get "restaurants/top", to: "restaurants#top"
      get :top
    end
    member do # :id
      # get "restaurants/:id/chef", to: "restaurants#chef"
      get :chef
    end
    # Nested reviews
    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy]
end
