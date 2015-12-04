class Deck < ActiveRecord::Base
  belongs_to :round
  has_many :cards
  # Remember to create a migration!
end
