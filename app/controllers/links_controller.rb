class LinksController < ApplicationController
  def index
    @links = Link.all
  end
  def new
    @link = Link.new
  end
  def create
    link_params[:url].gsub! 'http://', ''
    @link = Link.new(link_params)
    @link.url = 'http://' + @link.url
    if @link.save
      redirect_to "/"
    else
      render new_link_path
    end
  end

  def show
    @link = Link.find(params[:id])
    @comment = Comment.new
  end

  def edit
    @link = Link.find(params[:id])
  end

  def update
    @link = Link.find(params[:id])
    if @link.update(link_params)
      redirect_to link_path
    else
      render edit_link_path
    end
  end

  def destroy
    @link = Link.find(params[:id])
    @link.destroy
    redirect_to '/'
  end

private
  def link_params
    params.require(:link).permit(:name, :url)
  end
end
