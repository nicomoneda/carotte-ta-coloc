class ChangeUserTasksStatus < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_tasks, :status
    add_column :user_tasks, :status, :boolean, default: false
  end
end
