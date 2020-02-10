class AddCityToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :city, :string
  end
end
