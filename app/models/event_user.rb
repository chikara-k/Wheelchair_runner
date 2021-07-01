class EventUser < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :is_attend, presence: true
  validates_uniqueness_of :event_id, scope: :user_id
end
