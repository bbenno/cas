require 'rails_helper'

RSpec.describe Address, type: :model do
  context 'validations' do
    subject { build(:address) }

    it { should validate_presence_of(:co_name).allow_nil }
    it { should validate_presence_of(:street_address) }
    it { should validate_presence_of(:zip_code) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:state).allow_nil }
    it { should validate_presence_of(:country_code) }
    it { should validate_presence_of(:label).allow_nil }

    it { should validate_length_of(:country_code).is_equal_to(2) }
    it { should validate_inclusion_of(:country_code).in_array(ISO3166::Country.all.map(&:alpha2)) }
    it { should_not allow_value('ZZ').for(:country_code) }

    it { should_not allow_value(Faker::Address.street_name).for(:street_address) }
  end

  context 'database' do
    it { should have_db_index(:country_code) }
  end

  context 'association' do
    it { should belong_to(:letterable).dependent(false) }
  end
end
