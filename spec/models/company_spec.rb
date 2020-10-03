require 'rails_helper'
require_relative '../support/concerns/letterable'

RSpec.describe Company, type: :model do
  it_behaves_like :letterable

  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end
end
