require 'rails_helper'

RSpec.describe 'Affirmation poro', type: :poro do
  it 'creates an object for an affirmation from the JSON response' do
    affirmation_json = {
      id: '39',
      type: 'affirmation',
      attributes: {
        description: 'I am grateful for all the love and affection I get.',
        category: 'love'
      }
    }

    object = Affirmation.new(affirmation_json)
    expect(object).to be_instance_of(Affirmation)
    expect(object.description).to eq('I am grateful for all the love and affection I get.')
    expect(object.category).to eq('love')
  end
end
