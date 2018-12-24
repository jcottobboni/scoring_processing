# frozen_string_literal: true
class Score < ApplicationRecord
  # main config ...............................................................
  # extends ...................................................................
  # includes ..................................................................
  # security (i.e. attr_accessible) ...........................................
  # relationships .............................................................
  belongs_to :user
  # validations ...............................................................
  validates_presence_of :score_date, :username, :user_id, :points
  validates :username, presence: true, length: { minimum: 1, maximum: 255 }
  validates_numericality_of :points
  # callbacks .................................................................
  # scopes ....................................................................
  # additional config .........................................................
  # public instance methods ...................................................
  def self.import(file_path)
    CSV.foreach(file_path.first) do |row|
      p row
      score_date, username, user_id, points = row
      score = Score.new(score_date: score_date, username: username.strip, user_id: user_id.to_i, points: points.to_i)
      p score
      score.save
      p score.errors.full_messages
    end
  end

  # protected instance methods ................................................
  # private instance methods ..................................................
end
