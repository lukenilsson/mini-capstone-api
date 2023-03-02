class ProductsController < ApplicationController
  def index
    @products = Product.all
    render :index
  end

  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end

  # def product2
  #   @product = Product.second
  #   render template: "products/show"
  # end

  # def product3
  #   @product = Product.third
  #   render template: "products/show"
  # end
end
