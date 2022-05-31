require 'rails_helper'

RSpec.describe MainGoal, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:life) }
  end
end
