class V2::ProductsController < ApplicationController
  # def first_product
  #   product1=Product.first
  #   render json: product1.as_json
  # end
  # def all_products
  #   products=product_all
  #   render json: products.as_json
  # end
  before_action :authenticate_admin, except: [:index, :show]
  def index
    # prove that the app knows I'm logged in
    p "*" * 50
    p current_user
    p "*" * 50
    search_term = params[:search]
    if sort_by_price == 'true'
      products = Product.order(:price).where("name LIKE ?", "%#{search_term}%")
    else
      products = Product.order(:id).where("name LIKE ?", "%#{search_term}%")
    end
  end

  def show
    the_id = params[:id]
    product = Product.find_by(id:the_id)
    render json: the_id.as_json
  end

  def create
    product=Product.new(
      name: params[:input_name],
      price: params[:input_price],
      description: params[:input_description],
      in_stock: params[:in_stock]
      )

      if product.save
        render json: product.as_json
      else
        render json: {errors: product.errors.full_message}, status: :unprocessible_entity
      end
  end

  def update
    the_id = params[:id]
    product = Product.find_by(id: the_id)
    product.update(
      name: params[:input_name],
      price: params[:input_price],
      description: params[:input_description],
      image_url: params[:input_img_url]
      )

      if product.save
        render json: {errors: product.errors.full_messages}
      else
        render json: {errors: product.errors.full_messages}
      end
  end

    def destroy
      product = Product.find(params[:id])
      product.destroy
      render json: {message: "Successfully destroyed product ##{product.id}"}
    end

end
