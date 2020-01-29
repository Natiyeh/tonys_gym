class UserMembership < ApplicationRecord
  belongs_to :order
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true
end
