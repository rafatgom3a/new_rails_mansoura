class User < ApplicationRecord
  validates :name, :dob, :email, :phone_number, presence: true

  VALID_EMAIL_REGEX = /\A[^@\s]+@[^@\s]+\.[^@\s]+\z/
  validates :email, format: { with: VALID_EMAIL_REGEX }
  validates :email, uniqueness: true
end
