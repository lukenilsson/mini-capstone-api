class ImagesController < ApplicationController
  def index
    @images = Image.all
    render :index
  end

  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end
end
