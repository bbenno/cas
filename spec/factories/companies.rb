FactoryBot.define do
  factory :company do
    name { Faker::Company.unique.name }
    description { Faker::Lorem.sentence }
    homepage_url { Faker::Internet.url }
    address
    note { Faker::Lorem.paragraphs }
    email { Faker::Internet.email }
    industry { Faker::Company.industry }
  end
end
