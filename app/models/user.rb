class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :event_users, dependent: :destroy
  has_many :events, dependent: :destroy

  attachment :profile_image

  validates :name, presence: true
  validates :email, presence: true
  validates :user_status, presence: true
  validates :is_active, inclusion: { in: [true, false] }

  enum user_status: { "ランナー": 0, "ボランティア": 1 }
end
