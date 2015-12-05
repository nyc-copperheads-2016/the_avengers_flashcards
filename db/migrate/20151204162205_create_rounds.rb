class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.belongs_to :deck
      t.belongs_to :user
      t.integer :number_correct
      t.timestamps null: false
    end
  end
end
