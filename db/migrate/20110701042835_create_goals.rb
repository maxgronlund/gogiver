class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :title
      t.text :body
      t.boolean :accomplished
      t.datetime :due_date
      t.belongs_to :life_array

      t.timestamps
    end
    add_index :goals, :life_array_id
  end
end
