class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :message
      t.integer :user_id
      t.integer :seoul_id


      t.timestamps
    end
    add_index :comments, :user_id
    add_index :comments, :seoul_id
  end
end
