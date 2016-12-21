class Deck < ApplicationRecord
  has_many :members
  has_many :cards, through: :members
  validates :description, :presence => true
end
