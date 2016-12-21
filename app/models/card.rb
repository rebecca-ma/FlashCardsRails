class Card < ApplicationRecord
  has_and_belongs_to_many :decks
  validates :front, :presence => true
  validates :back, :presence => true
end
