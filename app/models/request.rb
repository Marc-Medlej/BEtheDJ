class Request < ApplicationRecord
  belongs_to :event
  belongs_to :track
  belongs_to :user
end
