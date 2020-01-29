class Product < ApplicationRecord
  validates :name, :merchant_id, :price, :product_status, presence: :true

  enum product_status: [:out_of_stock, :in_stock, :running_low]
end
