FactoryBot.define do
  factory :piece do
    points { 1 }
    description { Faker::Lorem.sentence(word_count: 3) }
    time_minutes { 1 }
    elephant { nil }
  end
end
