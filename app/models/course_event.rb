class CourseEvent < ApplicationRecord
  validates :scheduled_at, presence: :true

  has_many :course_participants
  belongs_to :course
end
