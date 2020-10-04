require 'rails_helper'

RSpec.describe Person, type: :model do
  it_behaves_like :letterable
  it_behaves_like :mailable

  context 'validations' do
    it { should validate_presence_of(:name) }
  end
end
