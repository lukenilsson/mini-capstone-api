class ProductsController < ApplicationController
  def index
    @products = Product.all
    render :index
  end

  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end

  def create
    @product = Product.new(
      name: params[:name],
      image_url: params[:image_url],
      price: params[:price],
      description: params[:description],
    )
    @product.save
    render :show
  end

  # def create
  #   @product = Product.create(
  #     name: "Furby",
  #     image_url: "https://upload.wikimedia.org/wikipedia/en/7/70/Furby_picture.jpg",
  #     price: 25,
  #     description: "Furby is an American electronic robotic toy that was originally released in 1998 by Tiger Electronics. It resembles a hamster or owllike creature and went through a period of being a 'must-have' toy following its holiday season launch, with continual sales until 2000.",
  #   )
  #   render :show
  # end
end
