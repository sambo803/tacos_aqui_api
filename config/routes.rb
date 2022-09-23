Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/carts" => "carts#index"

  post "/owners" => "owners#create"

  post "/sessions" => "sessions#create"

  patch "/carts/:id" => "carts#update"

end
