class User < ApplicationRecord
    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
    # has_many :sidekicks, #dependent: :destroy
    validates :first_name, :last_name, :age, presence: true
    validates :first_name, :last_name, length: { minimum: 2 }
    validates :age, numericality: { only_integer: true}, inclusion: { in: 10..155 }
    validates :email_address, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }

end
