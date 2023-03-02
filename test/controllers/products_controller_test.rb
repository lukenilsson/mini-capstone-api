require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    assert_difference "Product.count", 1 do
      post "/products.json", params: { name: "test product", price: 1, image_url: "image.jpg", description: "test description" }
    end
  end
end
