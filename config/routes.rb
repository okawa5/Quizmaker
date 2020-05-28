Rails.application.routes.draw do
  get 'games/new'
  get 'topics/new'
  get 'sessions/new'
  get 'users/new'
  root "pages#index"
  get "pages/:id/mypage"=>"pages#mypage"
  
  post "users/new" => "users#create"


  get  "/login",  to: "sessions#new"
  post "/login",  to: "sessions#create"
  delete "/logout", to:"sessions#destroy"
  get "/logout" => "sessions#destroy"

  post "topics/new" => "topics#create"
  get "topics/index"
  get "topics/answer"
  get "topics/:id/edit" => "topics#edit"
  post "topics/:id/update" => "topics#update"
  post "topics/:id/destroy"=> "topics#destroy"
  



  get "checks/new"
  get "checks/answer"
  post "checks/new"  => "checks#new"
  post "checks/answer" => "checks#answer"
  
  get"games/new"
  get"games/cake1"
  get"games/cake2"
  get"games/cake3"
  get"games/cake4"
  get"games/ok"

end

