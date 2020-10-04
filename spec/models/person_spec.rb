require 'rails_helper'
require_relative '../support/concerns/letterable'
require_relative '../support/concerns/mailable'

RSpec.describe Person, type: :model do
  it_behaves_like :letterable
  it_behaves_like :mailable

  context 'validations' do
    subject { build(:person) }

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:phone).allow_nil }
    it { should validate_presence_of(:date_of_birth).allow_nil }
    it { should validate_presence_of(:note).allow_nil }
    it { should validate_presence_of(:role).allow_nil }

    # it { should_not allow_value(Faker::Date.forward).for(:date_of_birth) }
  end

  context 'associations' do
    it { should belong_to(:company).dependent(false).validate(true) }
  end
end
