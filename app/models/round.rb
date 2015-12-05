class Round < ActiveRecord::Base
  has_many :cards, through: :deck
  belongs_to :user
end
