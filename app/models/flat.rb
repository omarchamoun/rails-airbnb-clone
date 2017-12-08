class Flat < ApplicationRecord
  include PgSearch
  pg_search_scope :search_full_text, :against => {
    :location => 'A',
    :name => 'B',
    :description => 'C'
  }

  belongs_to :user
  has_many :bookings

  mount_uploader :photo, PhotoUploader


  geocoded_by :location
  after_validation :geocode, if: :location_changed?

  validates :name, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :price, presence: true
end
