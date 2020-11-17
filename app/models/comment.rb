class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :body, presence: true, length: { in: 3..500 }
  validates :user_id, :post_id, presence: true
end
