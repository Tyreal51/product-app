class CartedProductsController < ApplicationController
  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted"
    )
    if carted_product.save
      render json: carted_product.as_json
    else
      render json: {errors: carted_product.errors.full_messages}
    end
  end

  def index
    carted_products = current_user.carted_products.where(status: "carted")
    render json: carted_products.as_json
  end

  def destroy
    # find the correct carted_product
    carted_product = CartedProduct.find_by(id: params[:id])
    # change the status to "removed"
    carted_product.update(status: "removed")
    render json: {message: "You removed this product from your shopping cart"}
  end


end
