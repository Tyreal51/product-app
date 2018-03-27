Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  get '/carted_products' => 'carted_products#index'
  post '/carted_products' => 'carted_products#create'
  delete '/carted_products' => 'carted_products#destroy'
  namespace :v1 do
    # get'/product'=>'products#product1'
    # get '/all-products' => 'products#every_products'
    # get '/first-product' => 'products#first'
    # get '/second-product' => 'products#second'
    # get '/any-product' => 'products#any'
    # get '/the-product/:id' => 'products#any'

    get '/orders' => 'orders#index'
    post '/orders' => 'orders#create'
    get '/products' => 'products#index'
    get 'products/:id' => 'products#show'
    post '/products' => 'products#create'
    patch '/products/:id' => 'products#update'
    delete '/products/:id' => 'products#destroy'
    post "/users" => "users#create"
    
  end
end
