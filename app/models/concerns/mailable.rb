module Mailable
  extend ActiveSupport::Concern

  included do
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  end
end