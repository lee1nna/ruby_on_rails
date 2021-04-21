class HomeController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.title = params[:post][:title]
    @post.content = params[:post][:content]
    @post.save

    redirect_to "/home/index"
  end

  def destroy
    post = Post.find(params[:post_id])
    post.destroy
    redirect_to "/home/index"
  end

  def edit
    @post = Post.find(params[:post_id])
  end

  def update
    post = Post.find(params[:post_id])
    post.title = params[:post][:title]
    post.content = params[:post][:content]
    post.save
    
    redirect_to "/home/index"
  end
  
end
