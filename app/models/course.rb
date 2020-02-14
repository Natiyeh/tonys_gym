class Course < ApplicationRecord
  belongs_to :intructor

  has_many :course_events

  validates :name, :frequency, :day_of_week, :time_of_day, presence: true
end
