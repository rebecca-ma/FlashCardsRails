class Deck < ApplicationRecord
  validates :description, :presence => true
end
