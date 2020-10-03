require 'spec_helper'

shared_examples_for :mailable do
  let(:model) { create(described_class.to_s.underscore) }

  it { should allow_value(Faker::Internet.email).for(:email) }
  it { should_not allow_value(Faker::Internet.domain_name).for(:email) }
end
