class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user
  has_many :carted_products
  belongs_to :user
end
