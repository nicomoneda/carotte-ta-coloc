class RemoveWeekonToUserTasksCarotteCards < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_tasks, :week_on
    remove_column :carotte_cards, :week_on
  end
end
