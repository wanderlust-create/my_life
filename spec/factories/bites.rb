FactoryBot.define do
  factory :bite do
    points { }
    description { Faker::Lorem.sentence(word_count: 3) }
    time_minutes  { }
    elephant_id    { }
  end
end
