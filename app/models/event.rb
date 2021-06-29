class Event < ApplicationRecord
  has_many :event_users, dependent: :destroy

  validates :name, presence: true
  validates :date, presence: true
  validates :begin_time, presence: true
  validates :finish_time, presence: true
  validates :place, presence: true
  validates :genre, presence: true

  enum genre: { "練習会": 0, "交流会": 1, "大会": 2, "その他": 3 }
end
