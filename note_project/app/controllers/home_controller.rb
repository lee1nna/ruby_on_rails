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
    post = Post.find(params[:id])
    post.destroy
    redirect_to "/home/index"
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
<<<<<<< HEAD
    post = Post.find(params[:id])
    post.title = params[:post_title]
    post.content = params[:post_content]
=======
    post = Post.find(params[:post_id])
    post.title = params[:post][:title]
    post.content = params[:post][:content]
>>>>>>> 134e8fe44e618d1b2240679ca1629df060ffff6f
    post.save
    
    redirect_to "/home/index"
  end
  
end
