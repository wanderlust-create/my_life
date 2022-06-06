require 'rails_helper'

RSpec.describe Elephant, type: :model do
  describe 'relationships' do
    it { should belong_to(:user) }
    it { should have_many(:pieces) }
  end

  describe 'validations' do
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:life) }
  end
end
