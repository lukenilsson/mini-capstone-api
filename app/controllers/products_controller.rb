class ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render template: "products/index"
  end

  def product1
    @product = Product.find_by(id: params[:id])
    render template: "products/show"
  end

  def product2
    @product = Product.second
    render template: "products/show"
  end

  def product3
    @product = Product.third
    render template: "products/show"
  end
end
