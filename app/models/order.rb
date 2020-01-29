class Order < ApplicationRecord
  has_many :order_items
  has_many :user_memberships

  has_one :user_id

  validates :status, presence: true
  validates :created_at, presence: true
end
