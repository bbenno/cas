require 'rails_helper'

RSpec.describe Address, type: :model do
  context 'validations' do
    it { should validate_presence_of(:street) }
  end
end
