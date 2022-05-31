require 'rails_helper'

RSpec.describe Bite, type: :model do
  describe 'relationships' do
    it { should belong_to(:elephant) }
  end

  describe 'validations' do
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:points) }
    it { should validate_numericality_of(:points) }
    it { should validate_presence_of(:time_minutes) }
    it { should validate_numericality_of(:time_minutes) }
  end
end
