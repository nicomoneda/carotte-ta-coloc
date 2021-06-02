class RenameTasksIdToUserTasks < ActiveRecord::Migration[6.0]
  def change
    rename_column :user_tasks, :tasks_id, :task_id
  end
end
