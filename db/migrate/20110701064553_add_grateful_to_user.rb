class AddGratefulToUser < ActiveRecord::Migration
  def change
    add_column :users, :grateful, :text
  end
end
