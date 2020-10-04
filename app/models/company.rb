class Company < ApplicationRecord
  include Letterable
  include Mailable

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :description, presence: true, allow_nil: true
  validates :homepage_url, presence: true, allow_nil: true
  validates :industry, presence: true, allow_nil: true
  validates :note, presence: true, allow_nil: true

  enum status: %i[active inactive archived]
end
