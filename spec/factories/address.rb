FactoryBot.define do
  factory :address do
    co_name { Faker::Name.name }
    street_address { Faker::Address.street_address }
    city { Faker::Address.city }
    zip_code { Faker::Address.zip_code }
    state { Faker::Address.state }
    country_code { Faker::Address.country_code }
    label { Faker::NatoPhoneticAlphabet.code_word }
  end
end
