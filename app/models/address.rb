class Address < ApplicationRecord
  validates :street_address, presence: true, format: { with: /\d+/, message: 'missing house number' }
  validates :city, presence: true
  validates :zip_code, presence: true
  validates :country_code, presence: true, length: { is: 2 }, inclusion: { in: ISO3166::Country.all.map(&:alpha2) }

  belongs_to :letterable, polymorphic: true
end
