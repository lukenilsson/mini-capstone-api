class CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
      order_id: nil
    )
    render json: @carted_product.as_json
  end

  def index
    if current_user
      @carted_products = current_user.carted_products.where(status: "carted")
      render json: @carted_products.as_json
    else
      render json: [], status: :unauthorized
    end
  end
end
