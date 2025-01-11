Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  root to: "movies#index"
  get "/movies/new", to: "movies#new"
  get "/lists", to: "lists#index"
  get "/lists/new", to: "lists#new"
  post "/lists", to: "lists#create", as: "create_list"
  get "/lists/:id", to: "lists#show", as: "list"
  post "/lists/:id", to: "bookmarks#create", as: "list_bookmarks"

  # Defines the root path route ("/")
  # root "posts#index"
end
