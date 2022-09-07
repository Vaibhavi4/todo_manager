Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get "todos", to: "todos#index"
  # post "todos/create", to: "todos#create"
  # get "todos/:id", to: "todos#show"
  get "todos/important", to: "todos#important" 

  put "todos/important/:id", to: "todos#importantTodo"

  get "/" => "home#index"

  resources :todos
  resources :users

  get "/signin" => "sessions#new", as: :new_sessions

  post "/signin" => "sessions#create", as: :sessions

  delete "/signout" => "sessions#destroy", as: :destroy_session

end
