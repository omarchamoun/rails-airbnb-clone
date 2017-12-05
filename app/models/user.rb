class User < ApplicationRecord
  belongs_to :registration
  has_many :bookings, dependent: :destroy
  has_many :flats, dependent: :destroy
end
