class Post < ApplicationRecord
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :user, optional: true

  attachment :image

  validates :name, presence: true
  validates :introduction, presence: true
  validates :image, presence: true

  enum parking: { "無料あり": 0, "有料あり": 1, "なし": 3 }
end
