class User < ActiveRecord::Base
  has_many :courses
  has_many :likes
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: {minimum: 5, maximum: 40 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 100 },
                                    uniqueness: { case_sensitive: false},
                                    format: { with: VALID_EMAIL_REGEX }
  has_secure_password

end