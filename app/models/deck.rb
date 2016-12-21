class Deck < ApplicationRecord
  has_and_belongs_to_many :cards
  validates :description, :presence => true
end
