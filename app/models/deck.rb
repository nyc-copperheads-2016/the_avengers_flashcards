class Deck < ActiveRecord::Base
  has_many :rounds
  has_many :cards

  def self.shuffle(deck)
    (1..deck.cards.count).to_a.shuffle
  end

end
