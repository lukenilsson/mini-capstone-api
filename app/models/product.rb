class Product < ApplicationRecord
  def is_discounted?
    if price <= 10
      return true
    else
      return false
    end
  end

  def tax
    tax = price * 0.09
  end

  def total
    return price + tax
  end

  def supplier
    Supplier.find_by(id: supplier_id)
  end
  def image
  # validates :name, presence: true,
  # validates :name, length: {maximum: 12},
  # validatws :name, uniqueness: true,
  # validates :price, presence: true,
  # validates :price, numericality: {greater_than: 0},
  # validates :description, presence: true,
  # validates :description, length: {in:10..500},
  # validates :stock, numericality: true {greater_than: 0}
end
