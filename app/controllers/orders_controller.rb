class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    if current_user
      product = Product.find_by(id: params[:product_id])
      @order = CartedProduct.where(status: "carted")
      calculated_subtotal = product.price * params[:quantity].to_i
      calculated_tax = calculated_subtotal * 0.09
      calculated_total = calculated_subtotal + calculated_tax
      @order = Order.new(
        user_id: current_user.id,
        product_id: carted_products,
        quantity: params[:quantity],
        subtotal: calculated_subtotal,
        tax: calculated_tax,
        total: calculated_total,
      )
      @order.save
      render :show
    else
      render json: [], status: :unauthorized
    end
  end

  def index
    if current_user
      @orders = current_user.orders
      render :index
    else
      render json: [], status: :unauthorized
    end
  end

  def show
    @order = current_user.orders.find_by(id: params[:id])
    render :show
  end
end

# def index
#   if current_user
#     render json: @carted_products.as_json
#   else
#     render json: [], status: :unauthorized
#   end
# end
