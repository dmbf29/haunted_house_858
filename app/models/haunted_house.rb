class HauntedHouse < ApplicationRecord
  has_many :monsters, dependent: :destroy # haunted_house.monsters
  validates :name, presence: true, uniqueness: true
  validates :banner_url, presence: true
end
