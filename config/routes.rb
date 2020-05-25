Rails.application.routes.draw do
  get 'topics/new'
  get 'sessions/new'
  get 'users/new'
  root "pages#index"
  
  post "users/new" => "users#create"


  get  "/login",  to: "sessions#new"
  post "/login",  to: "sessions#create"
  delete "/logout", to:"sessions#destroy"
  get "/logout" => "sessions#destroy"

  post "topics/new" => "topics#create"
  get "topics/index"
  get "topics/answer"

  get "checks/new"
  get "checks/answer"
  post "checks/new"  => "checks#new"
  post "checks/answer" => "checks#answer"

end

