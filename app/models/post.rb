class Post < ApplicationRecord
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :user

  attachment :image

  validates :name, presence: true
  validates :introduction, presence: true
  validates :image, presence: true
end
