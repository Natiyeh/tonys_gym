# frozen_string_literal: true

class Profile < ApplicationRecord
  # validates :first_name, :last_name,
  #           :date_of_birth, :profile_url,
  #           :gender, :street_address,
  #           :state, :country_code,
  #           :postal_code, :phone_number,
  has_one_attached :profile_url
  belongs_to :user
end
