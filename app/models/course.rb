class Course < ApplicationRecord
  belongs_to :intructor

  has_many :course_events

  validates :name, presence: true
  validates :frequency, presence: true
  validates :day_of_week, presence: true
  validates :time_of_day, presence: true
end
