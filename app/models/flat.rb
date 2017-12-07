class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings

  mount_uploader :photo, PhotoUploader

  geocoded_by :location
  after_validation :geocode, if: :location_changed?
end
