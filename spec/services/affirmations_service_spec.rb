require 'rails_helper'
RSpec.describe AffirmationsService, type: :service do
  context 'class methods' do
    context '#get_affirmatons' do
      it 'returns all affirmations' do
        search = AffirmationsService.get_affirmations('all')
        expect(search).to be_a Hash
        expect(search[:data]).to be_an Array
        search[:data].each do |item|
          expect(item[:id]).to be_a String
          expect(item[:type]).to eq('affirmation')
          expect(item[:attributes]).to have_key(:description)
          expect(item[:attributes][:description]).to be_a String
          expect(item[:attributes]).to have_key(:category)
          expect(item[:attributes][:category]).to be_a String
        end
      end

      it 'returns affirmations with specific category/ category=love' do
        search = AffirmationsService.get_affirmations('love')
        expect(search).to be_a Hash
        expect(search[:data]).to be_an Array
        search[:data].each do |item|
          expect(item[:id]).to be_a String
          expect(item[:type]).to eq('affirmation')
          expect(item[:attributes]).to have_key(:description)
          expect(item[:attributes][:description]).to be_a String
          expect(item[:attributes]).to have_key(:category)
          expect(item[:attributes][:category]).to eq('love')
        end
      end
    end
  end
end
