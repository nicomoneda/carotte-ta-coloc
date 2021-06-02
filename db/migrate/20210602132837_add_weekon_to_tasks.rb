class AddWeekonToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :week_on, :date
  end
end
