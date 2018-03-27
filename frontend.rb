require 'unirest'

# p name
# p price 
# p description
# p img_url

# response = Unirest.post("localhost:3000/v1/products", parameters: {
#     input_name: name,
#     input_price: price,
#     input_description: description,
#     input_image_url: image_url
# }
#   )
# p "type your search term here"
# search_term = gets.chomp
# response = Unirest.get("localhost:3000/products?search=#{search_term}")
# p response.body


# response = Unirest.patch("localhost:3000/v2/products/#{product_id}", parameters: {
#     input_name: name,
#     input_price: price,
#     input_description: description,
#     input_image_url: image_url
#   }
#   )

# puts JSON.pretty_generate(response.body)

# response = Unirest.post("localhost:3000/v1/users",
#   parameters:{
#     name: "roger",
#     email: "roger@gmail.com",
#     password: "password",
#     password_confirmation: "password"
#   }
#   )


# response = Unirest.post(
#   "http://localhost:3000/users",
#   parameters: {
#       name: "Peter",
#       email: "peter@gmail.com",
#       password: "password",
#       password_confirmation: "password"
#     }
#   )
# user = response.body


response = Unirest.post(
  "localhost:3000/user_token",
  parameters: {
    auth: {
      email: "bob@hope.com",
      password: "worthy"
    }
  }
 )


# p repsonse.body
# Save the JSON web token from the response
jwt = response.body["jwt"]
# Include the jwt in the headers of any future web requests
Unirest.default_header("Authorization", "Bearer #{jwt}")
p response.body

response = Unirest.get("localhost:3000/products")

# make a new order
# response = Unirest.post("localhost:3000/v1/orders", parameters: {
#     product_id: 3,
#     quantity: 10
  # }
# )

# response = Unirest.post("localhost:3000/v1/products", parameters: {
#     input_name: "John",
#     input_price: 20,
#     input_description: "erkjwerewjkrwerewkewrweewr"
#     # input_image_url: image_url
# }
#   )
# # p response.body

# jwt = ""
# Unirest.clear_default_headers()

# p "Start order"
# p "Enter product id"
# product_id=gets.chomp
# response=Unirest.post("localhost:3000/orders")
#   parameters: (

#   )
# p response.body
# p "Enter quantity"
# quantity=gets.chomp

# p "Add user id"
# user_id=gets.chomp



# p "Add product id"
# product_id=gets.chomp
# p "Enter quantity"
# quantity=gets.chomp

# carted products index
response = Unirest.get("localhost:3000/carted_products")


# carted_products create
# response=Unirest.post("localhost:3000/carted_products", parameters: {
#   product_id: 2,
#   quantity: 2
#   }
# )
p response.body

response = Unirest.delete("localhost:3000/carted_products", parameters: {
  id: gets.chomp
  })





