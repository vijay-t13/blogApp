Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "/blog_posts/new", to: "blog_posts#new"
  get "/blog_posts/:id", to: "blog_posts#show",  as: :blog_posts
  post "/blog_post" , to: "blog_post#create"

  root "blog_posts#index"
end
