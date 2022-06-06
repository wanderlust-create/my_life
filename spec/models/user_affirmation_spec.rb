require 'rails_helper'

RSpec.describe UserAffirmation, type: :model do
  describe 'relationships' do
    it { should belong_to(:user) }
  end

  describe 'validations' do
    it { should validate_presence_of(:description) }
  end
end
