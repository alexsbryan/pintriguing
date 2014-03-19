class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, :null => false
      t.string :password_digest, :null=> false
      t.string :session_token

      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.string :photo_url

      t.timestamps
    end
    add_index :users, :email
  end
end
