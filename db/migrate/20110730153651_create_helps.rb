class CreateHelps < ActiveRecord::Migration
  def change
    create_table :helps do |t|
      t.string :title
      t.text :body
      t.string :help_type
      t.belongs_to :user

      t.timestamps
    end
    add_index :helps, :user_id
  end
end
