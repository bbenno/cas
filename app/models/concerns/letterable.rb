module Letterable
  extend ActiveSupport::Concern

  included do
    has_one :address, as: :addressable
  end
end
