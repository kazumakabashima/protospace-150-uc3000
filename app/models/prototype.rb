class Prototype < ApplicationRecord
  validates :prototype, :catch_copy, :concept, :image, presence: true

  has_one_attached :image
end
