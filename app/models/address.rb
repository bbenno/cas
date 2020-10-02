class Address < ApplicationRecord
  validates :street_address, presence: true, format: { with: /\d+/, message: 'missing house number' }
end
