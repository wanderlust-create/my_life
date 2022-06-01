FactoryBot.define do
  factory :user do
    user_name { Faker::Science.scientist }
    email { Faker::Internet.email }
  end
end
