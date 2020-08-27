class Venue < ApplicationRecord
  # include PgSearch::Model
  # pg_search_scope :search_by_name_and_location,
  #   against: [ :location, :name ],
  #   using: {
  #     tsearch: { prefix: true } # <-- now `superman batm` will return something!
  #   }
  has_many :events, dependent: :destroy
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  has_one_attached :photo
end
