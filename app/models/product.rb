class Product < ApplicationRecord
      has_many :category_products
      # has_many :categories, through: :category_products
      has_many :orders
      belongs_to :supplier
      has_many :images
      has_many :carted_products
      

      # validates :name, presence: true
      # validates :price, presence: true
      # validates :description, presence: true
      # validates :price, numericality: { greater_than: 0 }
      # validates :name, length: { maximum: 30 }
      # validates :description, length: { in: 10..500 }
      # validates :img_url, allow_blank: true
    

  def as_json
    { 
      id: id,
      name: name,
      price: price,
      description: description,
      discounted_item: discounted_item,
      tax: tax,
      total: total,
      supplier: supplier.as_json,
      images: images.as_json
    }
  end

  def is_discounted
    if price < 2 
    end 
  end

  def tax
    (price * 0.09).round(2)
  end

  def total
    price + tax
  end

  def supplier
    Supplier.find_by(id: supplier_id)
  end

  # def 
  #   category_products = CategoryProduct.where(product_id: id)
  #   categories_of_product = []
  #   categories_of_product << category_product.category
  # end
  #   return categories_of_product




end
