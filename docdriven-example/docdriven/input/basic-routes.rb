Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # important: use snake_case for routes and id's - example: /todo_items/{id}/comments/{comment_id}

  # todo items routes
  get "/todo_items", to: "todo_items#index"
  get "/todo_items/{id}", to: "todo_items#show"
  post "/todo_items", to: "todo_items#create"
  put "/todo_items/{id}", to: "todo_items#update"
  delete "/todo_items/{id}", to: "todo_items#destroy"

  # comments routes
  post "/todo_items/{id}/comments", to: "comments#create"
  delete "/todo_items/{id}/comments/{comment_id}", to: "comments#destroy"

end
