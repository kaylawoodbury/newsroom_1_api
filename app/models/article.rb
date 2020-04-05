class Article < ApplicationRecord
  has_one_attached :image
  belongs_to :location
  validates_presence_of :title, :lead, :content, :category, :location_id
  enum category: [:latest_news, :tech, :food, :sports, :culture]
end
