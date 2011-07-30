class CreateLifeArrays < ActiveRecord::Migration
  def change
    create_table :life_arrays do |t|
      t.string :title
      t.text :body
      t.belongs_to :user

      t.timestamps
    end
    add_index :life_arrays, :user_id
  end
end
