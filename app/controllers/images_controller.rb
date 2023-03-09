class ImagesController < ApplicationController
  def index
    @image = Image.all
    render :index
  end
end
