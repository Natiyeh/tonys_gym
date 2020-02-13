# frozen_string_literal: true

class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.datetime :date_of_birth
      t.string :profile_url
      t.string :gender
      t.string :street_address
      t.string :state
      t.string :country_code
      t.string :postal_code
      t.string :phone_number

      t.timestamps
    end
  end
end
