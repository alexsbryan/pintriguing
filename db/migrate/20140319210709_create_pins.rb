class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :title, :null => false
      t.string :url, :null => false
      t.string :img_url

      t.timestamps
    end
  end
end
