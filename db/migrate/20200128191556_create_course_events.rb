# frozen_string_literal: true

class CreateCourseEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :course_events do |t|
      t.references :course, foreign_key: true
      t.datetime :scheduled_at

      t.timestamps
    end
  end
end
