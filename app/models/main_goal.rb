class MainGoal < ApplicationRecord
  belongs_to :user
  validates :description, presence: true, uniqueness: true
  validates :life, presence: true
end
