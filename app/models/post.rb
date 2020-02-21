# frozen_string_literal: true

class Post < ApplicationRecord
  validates :post_type, inclusion: { in: %w[wall public] }
  has_many :comments
end
