class PostsController < ApplicationController
  before_action :authenticate, only: [:new, :edit]

  def new
    @post = Post.new 
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to post_path(@post)
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  private
    def post_params
      params.require(:post).permit(:title, :body, :main_image, :html, :description)
    end

    def authenticate
      if params["pass"] != ENV["PASS"]
        redirect_to youdidntsaythemagicword_path 
      end
    end
end
