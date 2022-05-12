class Power < ApplicationRecord
  has_many :curses # invincibility.curses
  has_many :monsters, through: :curses # invincibility.monsters
  validates :name, presence: true, uniqueness: true
end
