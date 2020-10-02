FactoryBot.define do
  factory :address do
    co_name { Faker::Name.name }
    street { Faker::Address.street_address }
    city { Faker::Address.city }
    zipcode { Faker::Address.zip_code }
    country { Faker::Address.country_code }
    label { Faker::NatoPhoneticAlphabet.code_word }
  end
end
