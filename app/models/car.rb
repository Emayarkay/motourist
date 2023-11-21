class Car < ApplicationRecord
  has_many :bookings, dependent: :destroy

  validates :make, :model, :year, :price, :description, :location, :colour, :capacity, presence: true
  validates :description, length: { minimum: 10 }
  validates :year, numericality: { only_integer: true }
  validates :year, comparison: { greater_than: 1886 }
  validates :year, comparison: { less_than: 2024 }

  belongs_to :user
end
