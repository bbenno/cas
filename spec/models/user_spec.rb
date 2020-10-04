require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    subject { create(:user) }
    it { should have_secure_password }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:email).case_insensitive }
    it { should validate_uniqueness_of(:name).case_insensitive }
  end

  it { should have_db_index(:name) }
  it { should have_db_index(:email) }
end
