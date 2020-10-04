require 'rails_helper'

RSpec.describe Person, type: :model do
  it_behaves_like :letterable
  it_behaves_like :mailable

  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should belong_to(:company) }
    # it { should_not allow_value(Faker::Date.forward).for(:date_of_birth) }
  end
end
