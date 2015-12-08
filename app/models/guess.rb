class Guess < ActiveRecord::Base
  # Make sure you set the other side of the association, always...  Without, you
  # will be unable to get from the Guess object to the associated objects.
  #
  # belongs_to :card
  # belongs_to :round
end
