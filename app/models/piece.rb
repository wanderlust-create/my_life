class Piece < ApplicationRecord
  belongs_to :elephant

  validates :description, presence: true
  validates :points, presence: true, numericality: true
  validates :time_minutes, presence: true, numericality: true
end
