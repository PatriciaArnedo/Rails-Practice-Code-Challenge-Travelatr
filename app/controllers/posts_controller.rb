class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to post_path(@post)
  end 

  def edit
    find_post
  end

  def update
    find_post
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  private 

  def post_params
    params.require(:post).permit(:title, :content, :blogger_id, :destination_id)
  end 

  def find_post
    @post = Post.all.find(params[:id])
  end


end
