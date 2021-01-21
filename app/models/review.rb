class Review < ApplicationRecord
  belongs_to :cocktail
  validates :content, presence: true, length: {minimum: 5}
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: 1..5
end
