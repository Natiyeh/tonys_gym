# frozen_string_literal: true

class UserMembership < ApplicationRecord
  belongs_to :order
  belongs_to :user

  validates :start_date, :end_date, presence: true
end
