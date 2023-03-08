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
      stock: params[:stock],
    )

    @product.save

    if @product.valid?
      render :show
    else
      @product.errors.full_messages
      render json: { message: "Boo! You stink!" }
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name] || @product.name,
      image_url: params[:image_url] || @product.image_url,
      price: params[:price] || @product.price,
      description: params[:description] || @product.description,
      stock: params[:stock] || @product.stock,
    )
    @product.save
    if @product.valid?
      render :show
    else
      @product.errors.full_messages
      render json: { message: "Boo! You stink!" }
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: { message: "Byeeeeeee" }
  end
end
