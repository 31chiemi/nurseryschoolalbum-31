class Post < ApplicationRecord
  has_many_attached :images
  validates :images, presence: true
  validates :images, length: { minimum: 1, maximum: 6, message: "は1枚以上6枚以下にしてください" }
  belongs_to :user
end