class RemoveDeadloneFromGoals < ActiveRecord::Migration[6.1]
  def change
    remove_column :goals, :deadlone, :date
  end
end
