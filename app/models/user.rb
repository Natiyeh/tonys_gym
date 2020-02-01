class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validates :email, :password_digest, presence: :true
  
  has_one :role
  has_one :profile
  has_many :course_participants
  has_many :courses
  has_one :user_membership
end
