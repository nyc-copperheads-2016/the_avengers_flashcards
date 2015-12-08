class Deck < ActiveRecord::Base
  has_many :rounds
  has_many :cards#, dependent: :destroy - Per our discussion re: foreign keys and removing associated records.

  def self.shuffle(deck)
    (1..deck.cards.count).to_a.shuffle
  end

end
