class Article < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: {minimum: 2, maximum: 150}
  validates :content, presence: true, length: {minimum: 2, maximum: 2000}
  validates :category, presence: true, length: {minimum: 2, maximum: 150}
  validates :user_id, presence: true





  def self.recent
    order(:category)
  end

  





end
