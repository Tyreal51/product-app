# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# assign supplier ids to products
# grab all the products
# products = Product.all
# suppliers = Supplier.all
# # loop through them
# products.each do |product|
#   # assign an appropriate id to each of them
#   product.supplier_id = suppliers.sample.id
#   product.save
# end


# make new Images based on image column from products
# products = Product.all
# # loop through them
# products.each do |product|
#   # make a new image for each product
#   image = Image.new(url: product.image_url, product_id: product.id, description: Faker::Lorem.sentence)
#   image.save
# Product.create([
#   {name: "Chair",
#    price: 20,
#    description: "wooden kitchen chair",
#    image_url: "https://images.pexels.com/photos/116910/pexels-photo-116910.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb",
#     },
#   {name: "Sofa",
#    price: 500,
#    description: "Brown sectional sofa",
#    image_url: "https://images.pexels.com/photos/276566/pexels-photo-276566.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb"
#   }
#   ])
# product.save 

# CartedProduct.create!(
#   user_id: 2,
#   product_id: 3,
#   quantity: 3,
#   status: "carted"
#   )

# CartedProduct.create!(
#   user_id: 1,
#   product_id: 1,
#   quantity: 2,
#   status: "removed"
#   )

# CartedProduct.create!(
#   user_id: 3,
#   product_id: 2,
#   quantity: 1,
#   status: "purchased"
#   )
