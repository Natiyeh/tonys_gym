# frozen_string_literal: true

class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.references :intructor, foreign_key: { to_table: :users }
      t.string :name
      t.integer :frequency
      t.integer :day_of_week
      t.integer :time_of_day

      t.timestamps
    end
  end
end
