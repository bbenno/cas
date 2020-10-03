module Addressable
  extend ActiveSupport::Concern

  include do
    has_one :address
  end
end
