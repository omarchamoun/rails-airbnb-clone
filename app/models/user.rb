class User < ApplicationRecord
  belongs_to :registration
  has_many :bookings
  has_many :flats,
end
