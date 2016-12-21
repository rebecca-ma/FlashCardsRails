class Member < ApplicationRecord
  validates :deck_id, presence: true
  validates :card_id, presence: true
end
