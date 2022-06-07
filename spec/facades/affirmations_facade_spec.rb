require 'rails_helper'
RSpec.describe AffirmationsFacade
describe 'class methods' do
  describe '#Affirmations happy path' do
    it 'will return a list of affirmations' do
      affirmations = AffirmationsFacade.affirmations('all')
      expect(affirmations).to be_an Array
      expect(affirmations.count).to be > 1
      affirmations.each do |affirmation|
        expect(affirmation).to be_a Affirmation
        expect(affirmation.description).to be_a String
        expect(affirmation.category).to be_a String
      end
    end
  end
end
