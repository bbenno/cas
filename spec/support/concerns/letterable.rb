require 'spec_helper'

shared_examples_for :letterable do
  let(:model) { create(described_class.to_s.underscore) }

  it { should have_one(:address) }
  it { should accept_nested_attributes_for(:address).allow_destroy(true) }
end
