class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :word
      t.text :meaning

      t.timestamps
    end
    add_index :cards, :word
  end
end
