Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  root to: "movies#index"
  get "/movies/new", to: "movies#new"

  resources :lists, only: [:index, :new, :create, :show, :destroy] do
    post 'bookmarks', to: 'bookmarks#create'
  end

  # Defines the root path route ("/")
  # root "posts#index"
end
