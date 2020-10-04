require 'rails_helper'

RSpec.describe Address, type: :model do
  context 'validations' do
    subject { build(:address) }

    it { should validate_presence_of(:street_address) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:zip_code) }
    it { should validate_presence_of(:country_code) }
    it { should validate_length_of(:country_code).is_equal_to(2) }
    it { should belong_to(:letterable) }

    it 'ensures that street contains at least one number' do
      subject.street_address = Faker::Address.street_name
      expect(subject.valid?).to eq(false)
    end

    it 'ensures that country_code is valid ISO3166 code' do
      subject.country_code = 'ZZ'
      expect(subject.valid?).to eq(false)
    end
  end
end
