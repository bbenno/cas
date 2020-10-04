module Letterable
  extend ActiveSupport::Concern

  included do
    has_one :address, as: :letterable
    accepts_nested_attributes_for :address, allow_destroy: true
  end
end
