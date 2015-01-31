class CreateDayTasks < ActiveRecord::Migration
  def change
    create_table :day_tasks do |t|
      t.string :task
      t.references :day, index: true

      t.timestamps
    end
  end
end
