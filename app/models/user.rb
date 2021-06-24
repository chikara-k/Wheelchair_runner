class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :event_users, dependent: :destroy
  
  attachment :profile_image

  validates :name, presence: true
  validates :email, presence: true
  #true=ランナー、false=ボランティア
  validates :user_status, inclusion: { in: [true, false] }
  validates :is_active, inclusion: { in: [true, false] }
end
