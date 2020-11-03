class BloggersController < ApplicationController

  def index
    @bloggers = Blogger.all
  end

  def show
    @blogger = Blogger.all.find(params[:id])
  end

  def new
    @blogger = Blogger.new
  end

  def create
    @blogger = Blogger.new(blogger_params)
    @blogger.save
    redirect_to blogger_path(@blogger)
  end

  def edit
    @blogger = Blogger.all.find(params[:id])
  end

  def update
    @blogger = Blogger.all.find(params[:id])
    @blogger.update(blogger_params)
    redirect_to blogger_path(@blogger)
  end

  # def find_blogger
  #   @blogger = Blogger.all.find(params[:id])
  # end

  private 

  def blogger_params
    params.require(:blogger).permit(:name, :bio, :age)
  end

end
