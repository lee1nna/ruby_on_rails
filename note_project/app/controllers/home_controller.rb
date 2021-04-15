class HomeController < ApplicationController
  def index
  end

  def new
  end

  def create
    @post = Post.new
    @post.title = params[:post_title]
    @post.content = params[:post_content]
    @post.save

    redirect_to "/home/index"
  end
end
