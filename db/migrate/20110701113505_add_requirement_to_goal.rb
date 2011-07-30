class AddRequirementToGoal < ActiveRecord::Migration
  def change
    add_column :goals, :requirement, :text
    add_column :goals, :resistance, :text
    add_column :goals, :support, :text
    add_column :goals, :pay_back, :text
  end
end
