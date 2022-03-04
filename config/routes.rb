Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "articles#home"

  get "/article/new", to: "articles#new"
  post "articles", to: "articles#create"

  get "/article/:id/edit", to: "articles#edit"
  post "/article/:id", to:  "articles#update"

  get "/articles", to: "articles#show"

  delete "/article/:id", to: "articles#destroy"
end
