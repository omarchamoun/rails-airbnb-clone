class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings

  mount_uploader :photo, PhotoUploader

  validates :name, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :price, presence: true
end
