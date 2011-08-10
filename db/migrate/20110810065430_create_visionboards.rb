class CreateVisionboards < ActiveRecord::Migration
  def change
    create_table :visionboards do |t|
      t.belongs_to :user

      t.timestamps
    end
    add_index :visionboards, :user_id
  end
end
