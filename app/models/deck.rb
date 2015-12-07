class Deck < ActiveRecord::Base
  has_many :rounds
  has_many :cards
  
  # # initialize
  #   @cards = []

  # end


  # #shuffle method
  #    self.cards.shuffle!

  # #Pick a card
  #   self.cards.sample
  # #Correct?
  #   if card is correct, and its the first time we've seen it 
  #     increment first correct and pop the card
  #   else
  #   end
    

end
