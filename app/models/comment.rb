class Comment < ApplicationRecord
  # belongs_to :user
  # belongs_to :post

  validates :users_id, :posts_id, presence: true
end
