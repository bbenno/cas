class Address < ApplicationRecord
  validates :street, presence: true, format: { with: /\d+/, message: 'missing house number' }
end
