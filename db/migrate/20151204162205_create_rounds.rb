class CreateRounds < ActiveRecord::Migration
  def change
    create_table :round do |t|
      t.belongs_to :deck
      t.integer :number_correct

      t.timestamps null: false
    end
  end
end
