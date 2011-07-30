class AddShortTermStrategyToGoal < ActiveRecord::Migration
  def change
    add_column :goals, :short_term_strategy, :text
    add_column :goals, :long_term_strategy, :text
  end
end
