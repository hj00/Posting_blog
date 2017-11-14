class PostController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    Post.create(
      title: params[:title],
      content: params[:content],
      user_id: session[:user_id]
    )
  end

  def modify
  end
end
