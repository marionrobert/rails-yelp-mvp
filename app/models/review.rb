class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5],
                                  message: 'A review’s rating must be a number between 0 and 5' }
  validates :rating, numericality: { only_integer: true }
end
