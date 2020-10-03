class Company < ApplicationRecord
  include Letterable

  validates :name, presence: true, uniqueness: true
end
