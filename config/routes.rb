Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "articles#home"
  # Defines the root path route ("/")
  get "/articles", to: "articles#index"
  # root "articles#index"
  get "/new", to: "articles#new"
  get "articles/:id", to: "articles#show", as: :article
  post "articles", to: "articles#create"
  get "articles/:id/edit", to: "articles#edit", as: :article_edit
  patch "articles/:id", to: "articles#update", as: :update
  delete "articles/:id", to: "articles#destroy"
end
