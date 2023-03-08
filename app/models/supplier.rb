class Supplier < ApplicationRecord
  def products
    Product.where(product_id: id)
  end
end
