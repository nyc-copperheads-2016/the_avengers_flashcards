class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.belongs_to :deck, null: false
      t.belongs_to :user, null: false
      t.integer :number_correct, :default => 0
      t.integer :correct_first_try, :default => 0
      t.timestamps null: false
    end
  end
end
