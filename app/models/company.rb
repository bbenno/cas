class Company < ApplicationRecord
  include Letterable

  validates :name, presence: true, uniqueness: true
  enum status: %i[active inactive archived]
end
