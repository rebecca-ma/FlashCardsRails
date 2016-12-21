class Card < ApplicationRecord
  has_many :members
  has_many :decks, through: :members
  validates :front, :presence => true
  validates :back, :presence => true
end
