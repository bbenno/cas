FactoryBot.define do
  factory :company do
    name { Faker::Company.name }
    description { Faker::Lorem.sentence }
    homepage_url { Faker::Internet.url }
    address { build(:address) }
    note { Faker::Lorem.paragraphs(number: 2) }
  end
end
