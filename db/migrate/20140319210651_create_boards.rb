class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name, :null => false
      t.text :description
      t.integer :owner_id, :null => false

      t.timestamps
    end
    add_index :boards, :owner_id
  end
end
