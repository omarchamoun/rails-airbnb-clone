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
end
