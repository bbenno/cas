require 'rails_helper'

RSpec.describe Address, type: :model do
  context 'validations' do
    it { should validate_presence_of(:street_address) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:zip_code) }
    it { should validate_presence_of(:country_code) }
    it { should validate_length_of(:country_code).is_equal_to(2) }
    it { should belong_to(:addressable) }

    it 'ensures that street contains at least one number' do
      address = Address.new(street_address: Faker::Address.street_name).save
      expect(address).to eq(false)
    end

    it 'ensures that country_code is valid ISO3166 code' do
      address = build(:address, country_code: 'ZZ')
      expect(address.valid?).to eq(false)
    end
  end
end
