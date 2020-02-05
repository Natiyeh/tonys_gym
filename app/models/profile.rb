class Profile < ApplicationRecord
  # validates :first_name, :last_name,
  #           :date_of_birth, :profile_url,
  #           :gender, :street_address,
  #           :state, :country_code,
  #           :postal_code, :phone_number,


  belongs_to :user
end
