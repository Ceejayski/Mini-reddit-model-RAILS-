class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :username, presence: true, length: { in: 8..20 }, uniqueness: true
  validates :firstname, :lastname, presence: true, length: { minimum: 3 }
  validates :useremail, presence: true,
                        format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: 'Email invalid' },
                        uniqueness: { case_sensitive: false }, length: { in: 3..50 }
  validates :password, presence: true, length: { minimum: 8 }
end
