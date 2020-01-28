class Product < ApplicationRecord
  enum product_status: [:out_of_stock, :in_stock, :running_low]
end
