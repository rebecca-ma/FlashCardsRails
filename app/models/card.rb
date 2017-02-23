class Card < ApplicationRecord
  has_and_belongs_to_many :decks
  validates :front, :presence => true
  validates :back, :presence => true

  def self.all_by_alphabetical_front
    self.order(:front).all
  end

  def self.all_by_alphabetical_back
    self.order(:back).all
  end
end
