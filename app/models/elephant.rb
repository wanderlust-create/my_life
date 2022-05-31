class Elephant < ApplicationRecord
  belongs_to :user
  has_many :bites, dependent: :destroy

  validates :description, presence: true
  validates :life, presence: true
end
