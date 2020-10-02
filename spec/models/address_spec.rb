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
  end
end
