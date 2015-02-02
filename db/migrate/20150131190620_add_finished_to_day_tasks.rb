class AddFinishedToDayTasks < ActiveRecord::Migration
  def change
    add_column :day_tasks, :finished_at, :datetime
  end
end
