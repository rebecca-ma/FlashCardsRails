class Card < ApplicationRecord
  validates :front, :presence => true
  validates :back, :presence => true
end
