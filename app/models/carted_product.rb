class CartedProduct < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :user
  belongs_to :product

  def as_json
    {
      product_id: product_id,
      user_id: user_id,
      quantity: quantity,
    }
  end
end
