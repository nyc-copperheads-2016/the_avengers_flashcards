class CreateGuesses < ActiveRecord::Migration
  def change
  	create_table :guesses do |t|
  		t.string :guess, null: false
  		t.integer :correct, default: 0 # This data seems to be data that was inferred from
      # the relationship between this object and your Round/Card objects.  Generally, dont store
      # data that you can recreate on the fly.
  		t.belongs_to :round, null: false
  		t.belongs_to :card, null: false

  		t.timestamps(null: false)
  	end
  end
end
