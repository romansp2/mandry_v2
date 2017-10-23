class User < ApplicationRecord

  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { minimum: 4, maximum: 25 }
  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { minimum: 10, maximum: 100 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false}
  validates :password_digest, presence: true, length: { minimum: 5 }




end
