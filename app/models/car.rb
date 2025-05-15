class Car < ApplicationRecord
  belongs_to :owner

  has_many :reviews
  has_many :favoruites

  validates :brand, :model, :year, :fuel, presence: true
end
