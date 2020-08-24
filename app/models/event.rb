class Event < ApplicationRecord
  belongs_to :venue
  belongs_to :user
  has_many :event_tracks, dependent: :destroy
  has_many :requests, dependent: :destroy
  has_many :tracks, through: :event_tracks
  has_many :tracks, through: :requests

end
