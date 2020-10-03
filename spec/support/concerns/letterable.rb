require 'spec_helper'

shared_examples_for :letterable do
  let(:model) { create(described_class.to_s.underscore) }

  it 'has a address' do
    expect { model.address }.to_not raise_error
  end
end
