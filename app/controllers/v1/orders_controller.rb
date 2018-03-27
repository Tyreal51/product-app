class V1::OrdersController < ApplicationController
  
  before_action :authenticate_user

  def create
    product = Product.find_by(id:params[:product_id])
    calculated_subtotal = params[:quantity].to_i*product.price
    tax_rate = 0.09
    calculated_tax = calculated_subtotal*tax_rate
    calculated_total = calculated_subtotal+calculated_tax
    order1=Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total
      )
    order1.save
    render json: order1
  end

  def index
    orders = current_user.orders
    render json: orders.as_json
  end

      # search_term = params[:search]
      # products = Product.order(:id).where("name LIKE ?", "%#{search_term}%")
      # render json: products.as_json
  # end

  def show
    order_number = params[:number]
    order = Order.find_by(number:order_number)
    render json: the_id.as_json
  end

end
