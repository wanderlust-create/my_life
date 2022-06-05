class User < ApplicationRecord
  has_many :elephants, dependent: :destroy
  has_many :pieces, through: :elephants, dependent: :destroy

  validates :user_name, presence: true
  validates :email, presence: true, uniqueness: true
end
