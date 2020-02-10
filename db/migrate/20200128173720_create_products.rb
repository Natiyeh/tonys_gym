# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :merchant_id
      t.float :price
      t.integer :product_status

      t.timestamps
    end
  end
end
