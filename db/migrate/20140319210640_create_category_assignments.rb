class CreateCategoryAssignments < ActiveRecord::Migration
  def change
    create_table :category_assignments do |t|
      t.integer :board_id, :null=>false
      t.integer :cat_id, :null=>false

      t.timestamps
    end
    add_index :category_assignments, :board_id
    add_index :category_assignments, :cat_id
  end
end
