class CreateBoardAssignments < ActiveRecord::Migration
  def change
    create_table :board_assignments do |t|
      t.integer :board_id, :null => false
      t.integer :pin_id, :null => false
      t.text :description

      t.timestamps
    end
    add_index :board_assignments, :board_id
    add_index :board_assignments, :pin_id
  end
end
