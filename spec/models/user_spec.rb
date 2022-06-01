require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'relationships' do
    it { should have_many(:elephants) }
    it { should have_many(:bites).through(:elephants) }
  end

  describe 'validations' do
    it { should validate_presence_of(:user_name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
  end

  it 'returns the user name and email' do
    user = build(:user)
  end
end
