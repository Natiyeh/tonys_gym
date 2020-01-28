class CourseParticipant < ApplicationRecord
  belongs_to :course_event
  belongs_to :user
end
