class Person < ApplicationRecord
  include Letterable
  include Mailable

  belongs_to :company

  validates :name, presence: true
end
