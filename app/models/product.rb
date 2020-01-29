class Product < ApplicationRecord
  validates :name, :merchant_id, :price, :product_status, presence: :true

  has_many :order_items
  enum product_status: [:out_of_stock, :in_stock, :running_low]
end
