class User < ApplicationRecord

  belongs_to :registration
  has_many :bookings, dependent: :destroy
  has_many :flats, dependent: :destroy

  mount_uploader :photo, PhotoUploader
end
