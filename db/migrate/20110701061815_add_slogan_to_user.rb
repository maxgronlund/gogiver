class AddSloganToUser < ActiveRecord::Migration
  def change
    add_column :users, :slogan, :text
  end
end
