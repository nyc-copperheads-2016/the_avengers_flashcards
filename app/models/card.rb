class Card < ActiveRecord::Base
  belongs_to :deck
  has_many :guesses
  has_many :rounds, through: :guesses

  def is_correct? guess
    guess.downcase == answer.downcase
  end
end
