class Elephant < ApplicationRecord
  belongs_to :user
  has_many :pieces, dependent: :destroy

  validates :description, presence: true
  validates :life, presence: true
end
