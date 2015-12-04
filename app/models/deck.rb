class Deck < ActiveRecord::Base
  belongs_to :rounds
  has_many :cards
  # Remember to create a migration!
end
