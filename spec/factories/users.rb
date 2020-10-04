FactoryBot.define do
  factory :user do
    password { Faker::Internet.password }
    name { Faker::Internet.unique.username }
    email { Faker::Internet.unique.email }
  end
end
