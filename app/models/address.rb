class Address < ApplicationRecord
  validates :street_address, presence: true, format: { with: /\d+/, message: 'missing house number' }
  validates :city, presence: true
  validates :zip_code, presence: true
  validates :country_code, presence: true, length: { is: 2 }
end
