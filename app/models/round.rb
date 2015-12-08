class Round < ActiveRecord::Base
  belongs_to :deck
  has_many :cards, through: :deck
  belongs_to :user
  has_many :guesses

  # We want to make your data less brittle.  By using the underlying
  # associations, we can ensure that the data is what we expect, since it is
  # coming from the source information.  Trying to maintain statefulness
  # either by storing derived values in the database or session is prone to
  # bugs and values becoming out of sync.  Try to derive those values from the
  # underlying data sources whenever possible.
  #
  # I can envision your Rounds object having some of the following methods:
  #
  # def cards_answered_correctly
  #   cards.join()
  # end

  # def available_cards
  #   cards - cards_answered_correctly
  # end

  # def next_card
  #   available_cards.shuffle.shift
  # end
end
