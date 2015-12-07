class CreateGuesses < ActiveRecord::Migration
  def change
  	create_table :guesses do |t|
  		t.string :guess, null: false
  		t.integer :correct, default: 0
  		t.belongs_to :round
  		t.belongs_to :card

  		t.timestamps(null: false)
  	end
  end
end
