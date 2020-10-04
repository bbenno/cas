class Address < ApplicationRecord
  validates :co_name, presence: true, allow_nil: true
  validates :street_address, presence: true, format: { with: /\d+/, message: 'missing house number' }
  validates :city, presence: true
  validates :zip_code, presence: true
  validates :state, presence: true, allow_nil: true
  validates :country_code, presence: true, length: { is: 2 }, inclusion: { in: ISO3166::Country.all.map(&:alpha2) }
  validates :label, presence: true, allow_nil: true

  belongs_to :letterable, polymorphic: true
end
