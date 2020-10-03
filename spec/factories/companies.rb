FactoryBot.define do
  factory :company do
    name { Faker::Company.unique.name }
    description { Faker::Lorem.sentence }
    homepage_url { Faker::Internet.url }
    address
    note { Faker::Lorem.paragraphs(number: 2) }
    email { Faker::Internet.email }
  end
end
