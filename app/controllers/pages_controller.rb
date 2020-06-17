class PagesController < ApplicationController

  def index
    @posts = Post.paginate(page: params[:page], per_page: 15).order('created_at DESC')
  end
end
