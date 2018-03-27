class V1::ProductsController < ApplicationController

  def create
    product=Product.new(
      name: params[:input_name],
      price: params[:input_price],
      description: params[:input_description],
      image_url: params[:input_img_url],
      in_stock: params[:in_stock]
      )

      if product.save
        render json: product.as_json
      else
        render json: {errors: product.errors.full_message}, status: :unprocessible_entity
      end
    end
  # def first_book
  #   book1=Product.first
  #   render json: book1.as_json
  # end
  # def all_products
  #   products=product_all
  #   render json: products.as_json
  # end
end
