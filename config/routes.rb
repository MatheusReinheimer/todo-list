Rails.application.routes.draw do
  # get "/", controller:"login", action:"new"
  get   "/", to:"login#new"
  get   "/login", to:"login#new"
  post  "/login", to:"login#create"

  # get "/signup", controller:"signup", action:"new"
  get   "/signup", to:"signup#new"
  post  "/signup", to:"signup#create"

  get "/tasks", to:"tasks#index"

end
