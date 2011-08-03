class AddLifePurposeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :life_purpose, :text
  end
end
