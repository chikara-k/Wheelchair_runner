class Event < ApplicationRecord
  has_many :event_users, dependent: :destroy
  belongs_to :user, optional: true

  attachment :image

  validates :title, presence: true
  validates :begin_time, presence: true
  validates :finish_time, presence: true

  enum genre: { "練習会": 0, "交流会": 1, "大会": 2, "その他": 3 }
end
