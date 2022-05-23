class Reference < ApplicationRecord
  validates :name, presence: true

  default_scope { order(:name) }
end
