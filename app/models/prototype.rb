class Prototype < ApplicationRecord
  validates :prototype, :catch_copy, :concept, :image, presence: true


end
