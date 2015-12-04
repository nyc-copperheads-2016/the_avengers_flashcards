class Round < ActiveRecord::Base
  has_many :cards, through: :deck
  # Remember to create a migration!
end
