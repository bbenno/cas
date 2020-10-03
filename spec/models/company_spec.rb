require 'rails_helper'
require_relative '../support/concerns/letterable'

RSpec.describe Company, type: :model do
  it_behaves_like :letterable

  subject { build(:company, :active) }

  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name).case_insensitive  }
  end

  it { should define_enum_for(:status).with_values(%i[active inactive archived]) }
end
