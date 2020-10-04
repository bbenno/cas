require 'rails_helper'
require_relative '../support/concerns/letterable'
require_relative '../support/concerns/mailable'

RSpec.describe Company, type: :model do
  it_behaves_like :letterable
  it_behaves_like :mailable

  context 'validations' do
    subject { build(:company, :active) }

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description).allow_nil }
    it { should validate_presence_of(:homepage_url).allow_nil }
    it { should validate_presence_of(:note).allow_nil }
    it { should validate_presence_of(:status).allow_nil }
    it { should validate_presence_of(:industry).allow_nil }

    it { should validate_uniqueness_of(:name).case_insensitive }
  end

  context 'database' do
    it { should have_db_index(:name).unique }
    it { should have_db_index(:industry) }
    it { should have_db_index(:status) }
  end

  it { should define_enum_for(:status).with_values(%i[active inactive archived]) }
end
