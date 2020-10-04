FactoryBot.define do
  factory :person do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    company
    phone { Faker::PhoneNumber.phone_number }
    address
    date_of_birth { Faker::Date.birthday }
    note { Faker::Lorem.paragraphs }
    role { Faker::Job.position }
  end
end
