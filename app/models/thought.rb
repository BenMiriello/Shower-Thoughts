class Thought < ApplicationRecord
  belongs_to :user

  has_many :likes, dependent: :destroy
  has_many :liking_users, through: :likes, source: :user

  has_many :dislikes, dependent: :destroy
  has_many :disliking_users, through: :dislikes, source: :user

  validates :text, presence: true

  def rating
    self.likes.count - self.dislikes.count
  end

  # def percent_positive
  #   100*(self.likes.count)/(self.rating)
  # end

end

