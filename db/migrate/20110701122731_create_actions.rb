class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.string :title
      t.datetime :due_date
      t.belongs_to :goal
      t.boolean :done

      t.timestamps
    end
    add_index :actions, :goal_id
  end
end
