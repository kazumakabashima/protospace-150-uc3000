class Prototype < ApplicationRecord
  validates :prototype, :catch_copy, :concept, :image, presence: true

  has_many :comments
  # belongs_to :user
end
