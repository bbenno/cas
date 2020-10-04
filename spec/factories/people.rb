FactoryBot.define do
  factory :person do
    name { Faker::Name.name }
    company
    phone { Faker::PhoneNumber.phone_number }
    address
    date_of_birth { Faker::Date.birthday }
    note { Faker:Lorem.paragraph }
    role { nil }
  end
end
