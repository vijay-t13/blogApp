Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # some below blog post can be handled in resources direct
  # resources :blog_posts

  get "/blog_posts/new", to: "blog_posts#new", as: :new_blog_post
  get "/blog_posts/:id/edit", to: "blog_posts#edit", as: :edit_blog_post
  get "/blog_posts/:id", to: "blog_posts#show", as: :blog_post
  post "/blog_posts", to: "blog_posts#create", as: :blog_posts

  # both below does the smae
  post "/blog_posts/update/:id", to: "blog_posts#update"
  patch "/blog_posts/:id", to: "blog_posts#update", as: :update_blog_posts

  # both below does the same
  post "/blog_posts/:id/delete", to: "blog_posts#delete"
  delete "/blog_posts/:id", to: "blog_posts#delete", as: :delete_post

  root "blog_posts#index"
end
