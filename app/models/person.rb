class Person < ApplicationRecord
  include Letterable
  include Mailable

  belongs_to :company
  has_one :address

  validates :name, presence: true
end
