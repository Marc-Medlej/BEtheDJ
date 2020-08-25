class Request < ApplicationRecord
  belongs_to :event
  belongs_to :track
  belongs_to :user

  validates_uniqueness_of :user_id, scope: [:track_id, :event_id], message: 'You have already requested that song' 
end
