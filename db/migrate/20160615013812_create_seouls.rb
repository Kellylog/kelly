class CreateSeouls < ActiveRecord::Migration
  def change
    create_table :seouls do |t|
      t.string :name
      t.text :description
      t.string :address
      t.integer :user_id

      t.timestamps
    end

    add_index :seouls, :user_id
  end
end
