class Post < ApplicationRecord
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  has_many :comments, dependent: :destroy
  belongs_to :user, optional: true

  attachment :image

  validates :name, presence: true
  validates :introduction, presence: true
  validates :image, presence: true

  enum parking: { "無料あり": 0, "有料あり": 1, "なし": 3 }

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end
  
  def commented_by?(user)
    comments.where(user_id: user.id).exists?
  end
end
