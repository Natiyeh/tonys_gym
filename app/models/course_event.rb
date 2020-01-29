class CourseEvent < ApplicationRecord
  validates :scheduled_at, presence: :true
  
  belongs_to :course
end
