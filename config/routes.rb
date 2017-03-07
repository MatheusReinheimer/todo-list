Rails.application.routes.draw do
  # get "/", controller:"login", action:"new"
  get "/", to:"login#new"
  get "/login", to:"login#new"

  # get "/signup", controller:"signup", action:"new"
  get   "/signup", to:"signup#new"
  post  "/signup", to:"signup#create"


end
