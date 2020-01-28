class CreateCourseParticipants < ActiveRecord::Migration[5.2]
  def change
    create_table :course_participants do |t|
      t.references :course_event, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
