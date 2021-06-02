class RenameTasksidToCarotteCards < ActiveRecord::Migration[6.0]
  def change
    rename_column :carotte_cards, :tasks_id, :task_id
  end
end
