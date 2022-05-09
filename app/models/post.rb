class Post < ApplicationRecord
  default_scope -> { order(updated_at: :desc) }
end
