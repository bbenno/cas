class Person < ApplicationRecord
  belongs_to :company
  has_one :address
end
