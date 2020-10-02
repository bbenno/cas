require 'rails_helper'

RSpec.describe Address, type: :model do
  context 'validations' do
    it 'ensures the presence of street' do
      address = Address.new(street: '').save
      expect(address).to eq(false)
    end
  end
end
