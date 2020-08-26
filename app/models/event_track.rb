class EventTrack < ApplicationRecord
  belongs_to :track
  belongs_to :event

  validates_uniqueness_of :track_id, scope: [:event_id]
end
