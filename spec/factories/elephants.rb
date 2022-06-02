FactoryBot.define do
  factory :elephant do
    life { Faker::Book.title }
    description { Faker::Lorem.paragraph(sentence_count: 2) }
    user_id {}
  end
end
