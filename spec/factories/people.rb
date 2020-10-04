FactoryBot.define do
  factory :person do
    name { "MyString" }
    company { nil }
    phone { "MyString" }
    address { nil }
    date_of_birth { "2020-10-04" }
    note { "MyText" }
    role { "MyString" }
  end
end
