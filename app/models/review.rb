class Review < ApplicationRecord
  belongs_to :car

  validates :rating, presence: true
  validates :comment, length: {minimum:6}
end
