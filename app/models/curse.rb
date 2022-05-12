class Curse < ApplicationRecord
  belongs_to :monster
  belongs_to :power
  validates :power, uniqueness: { scope: :monster }
end
