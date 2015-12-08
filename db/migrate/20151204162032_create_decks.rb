class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :name, null: false
      t.text :description # You did not need a text field here.
      # The database stores text/blob fields in a separate table.  Its not nearly
      # as efficient to find data in it, or to pull the record it is linked to.

      t.timestamps null: false
    end
  end
end
