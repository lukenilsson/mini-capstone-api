Rails.application.routes.draw do
  # get "/products", controller: "products", action: "index"
  get "/products" => "products#index"
  # get "/product1/:id", controller: "products", action: "product1"
  get "/products/:id" => "products#show"
  # get "/product2", controller: "products", action: "product2"
  post "/products" => "products#create"
  # get "/product3", controller: "products", action: "product3"

  patch "products/:id" => "products#update"

  delete "/products/:id" => "products#destroy"

  get "/suppliers" => "suppliers#index"

  get "/suppliers/:id" => "suppliers#show"
end
