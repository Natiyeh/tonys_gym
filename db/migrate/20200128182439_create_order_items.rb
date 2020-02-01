class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.references :order_id, foreign_key: true
      t.references :product_id, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
