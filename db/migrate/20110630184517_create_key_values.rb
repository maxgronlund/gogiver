class CreateKeyValues < ActiveRecord::Migration
  def change
    create_table :key_values do |t|
      t.string :title
      t.text :body
      t.belongs_to :user

      t.timestamps
    end
    add_index :key_values, :user_id
  end
end
