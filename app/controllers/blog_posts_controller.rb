class BlogPostsController < ApplicationController
  def index
    @blog_posts = BlogPost.all
  end


  def new
    @blog = BlogPost.new
  end

  def show
    @blog_post = BlogPost.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end




end
