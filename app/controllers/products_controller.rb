class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @products = Product.all
    # if params[:category]
    #   category = Category.find_by(name: params[:category])
    #   @products = category.products
    # end
    render :index
  end

  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end

  def create
    @product = Product.new(
      supplier_id: params[:supplier_id],
      name: params[:name],
      price: params[:price],
      description: params[:description],
      stock: params[:stock],
    )

    if @product.valid?
      Image.create(product_id: @product_id, url: params[:image_url])
      render :show
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end
end

def update
  @product = Product.find_by(id: params[:id])
  @product.update(
    name: params[:name] || @product.name,
    price: params[:price] || @product.price,
    description: params[:description] || @product.description,
    stock: params[:stock] || @product.stock,
  )
  @product.save
  if @product.valid?
    render :show
  else
    render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
  end
end

def destroy
  @product = Product.find_by(id: params[:id])
  @product.destroy
  render json: { message: "Byeeeeeee" }
end

def authenticate_user
end
