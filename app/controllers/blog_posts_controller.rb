class BlogPostsController < ApplicationController
  before_action :set_blog_post_by_id, only: [:show, :edit, :delete, :update]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @blog_posts = user_signed_in? ? BlogPost.sorted.all : BlogPost.published.sorted
  end

  def show
  end

  def new
    @blog_post = BlogPost.new
  end

  def create
    @blog_post = BlogPost.new(blog_post_allowed_params)
    if @blog_post.save
      redirect_to @blog_post
    else
      render :new, status: :bad_request
    end
  end

  def edit
  end

  def update
    if @blog_post.update(blog_post_allowed_params)
      redirect_to @blog_post
    else
      render :edit, status: :bad_request
    end
  end

  def delete
    if @blog_post.destroy
      redirect_to root_path
    else
      render :show, status: :bad_request
    end
  end

  private

  def blog_post_allowed_params
    params.require(:blog_post).permit(:title, :body, :published_at)
  end

  def set_blog_post_by_id
    @blog_post = user_signed_in? ? BlogPost.find(params[:id]) : BlogPost.published.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end
end
