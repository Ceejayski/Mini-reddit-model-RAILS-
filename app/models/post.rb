class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: { minimum: 3 }
  validates :body, presence: true, length: { in: 3..500 }
  validates :user_id, presence: true
end
