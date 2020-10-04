module Mailable
  extend ActiveSupport::Concern

  included do
    validates :email, presence: true, allow_nil: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  end
end
