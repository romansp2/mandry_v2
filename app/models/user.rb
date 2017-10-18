class User < ApplicationRecord

  validates :name, presence: true, length: {minimum: 4, maximum: 25}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+\.[a-z]+\z/i
  validates :email, presence: true, length: {minimum: 10, maximum: 100},
            format: {with: VALID_EMAIL_REGEX}
end
