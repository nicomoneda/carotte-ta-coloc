class CreateCarotteCards < ActiveRecord::Migration[6.0]
  def change
    create_table :carotte_cards do |t|
      t.references :user, null: false, foreign_key: true
      t.references :tasks, null: false, foreign_key: true
      t.date :week_on

      t.timestamps
    end
  end
end
