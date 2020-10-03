require 'rails_helper'
require_relative '../support/concerns/letterable'

RSpec.describe Company, type: :model do
  it_behaves_like :letterable
end
