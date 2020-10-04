class Person < ApplicationRecord
  include Letterable
  include Mailable

  validates :name, presence: true
  validates :phone, presence: true, allow_nil: true
  validates :date_of_birth, presence: true, allow_nil: true
  validates :note, presence: true, allow_nil: true
  validates :role, presence: true, allow_nil: true

  belongs_to :company, validate: true
end
