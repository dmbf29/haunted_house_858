class Monster < ApplicationRecord
  belongs_to :haunted_house
  has_many :curses, dependent: :destroy
  has_many :powers, through: :curses
  has_one_attached :photo
  validates :name, presence: true
end
