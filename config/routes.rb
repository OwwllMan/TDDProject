Rails.application.routes.draw do


  root "statique#home"
  get "/confirm", to: "statique#confirm"
  get "/club", to: "statique#club"

  get "sessions/new"

  get "/contact", to: "statique#contact"
  get "/team", to: "statique#team"
  get "/services", to: "statique#services"

  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"


  resources :users

end

