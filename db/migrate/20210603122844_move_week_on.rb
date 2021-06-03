class MoveWeekOn < ActiveRecord::Migration[6.0]
  def change
    remove_column :tasks, :week_on, :date
    add_column :user_tasks, :week_on, :date
  end
end
