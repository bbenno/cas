class Address < ApplicationRecord
  validates :street, presence: true
end
