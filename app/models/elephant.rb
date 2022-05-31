class Elephant < ApplicationRecord
  belongs_to :user
  validates :description, presence: true
  validates :life, presence: true
end
