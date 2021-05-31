class CreateUserTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :user_tasks do |t|
      t.string :status
      t.references :user, null: false, foreign_key: true
      t.references :tasks, null: false, foreign_key: true
      t.date :week_on

      t.timestamps
    end
  end
end
