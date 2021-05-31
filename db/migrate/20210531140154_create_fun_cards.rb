class CreateFunCards < ActiveRecord::Migration[6.0]
  def change
    create_table :fun_cards do |t|
      t.string :name
      t.string :description
      t.integer :points

      t.timestamps
    end
  end
end
