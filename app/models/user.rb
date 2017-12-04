class User < ApplicationRecord
  belongs_to :registration
  has_many :flats, through: :bookings
  has_many :bookings
end
