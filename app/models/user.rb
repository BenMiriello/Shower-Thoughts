class User < ApplicationRecord
  has_secure_password
  validates :password, confirmation: true

  has_many :thoughts, dependent: :destroy

  has_many :likes, dependent: :destroy
  has_many :liked_thoughts, through: :likes, source: :thought

  has_many :dislikes, dependent: :destroy
  has_many :disliked_thoughts, through: :dislikes, source: :thought

  has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow'
  has_many :followees, through: :followed_users

  has_many :following_users, foreign_key: :followee_id, class_name: 'Follow'
  has_many :followers, through: :following_users

  # has_secure_password
  
  validates :name, presence: true
  # validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 

end

