class Track < ApplicationRecord
    has_many :event_tracks, dependent: :destroy
    has_many :requests, dependent: :destroy
    has_one_attached :photo
end
