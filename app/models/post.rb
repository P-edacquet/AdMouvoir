class Post < ApplicationRecord
  validates :title, :content, :category, presence: true
  default_scope -> { order(updated_at: :desc) }
end
