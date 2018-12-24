# frozen_string_literal: true

class User < ApplicationRecord
  rolify
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :scores

  validates :name, presence: true, length: { maximum: 100 }
  validates :email, presence: true, uniqueness: true, length: { maximum: 100 }
  validates :username, presence: true, uniqueness: true,
            length: { maximum: 100 }
  validates :bio, length: { maximum: 160 }
  validates :url, length: { maximum: 100 }
  validates :location, length: { maximum: 100 }

  def actual_score
    points = scores.sum(:points)
    return 3126 if points >= 3126
    points
  end

  def actual_percentage
    (actual_score * 100) / 3126
  end
end
