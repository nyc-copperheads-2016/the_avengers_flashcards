class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :question, null: false
      t.string :answer, null: false
      t.belongs_to :deck, null: false

      t.timestamps null: false
    end
  end
end
