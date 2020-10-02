require 'rails_helper'

RSpec.describe Address, type: :model do
  context 'validations' do
    it 'ensures the presence of street' do
      should validate_presence_of(:street_address)
    end

    it 'ensures that street contains at least one number' do
      address = Address.new(street_address: 'Long Hill Street').save
      expect(address).to eq(false)
    end

    it 'ensures the presence of city' do
      should validate_presence_of(:city)
    end

    it 'ensures the presence of zip_code' do
      should validate_presence_of(:zip_code)
    end

    it 'ensures the presence of country_code' do
      should validate_presence_of(:country_code)
    end

    it 'ensures that country_code has length of two' do
      should validate_length_of(:country_code).is_equal_to(2)
    end

    it 'ensures that country_code is valid ISO3166 code' do
      address = build(:address, country_code: 'ZZ')
      expect(address.valid?).to eq(false)
    end
  end
end
