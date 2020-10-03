class Company < ApplicationRecord
  include Letterable
  include Mailable

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  enum status: %i[active inactive archived]
end
