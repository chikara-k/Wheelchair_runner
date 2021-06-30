class EventUser < ApplicationRecord
  belongs_to :user
  belongs_to :event
  
  validates :is_attend, presence: true
end
