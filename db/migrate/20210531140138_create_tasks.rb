class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.string :image
      t.integer :points
      t.references :coloc, null: false, foreign_key: true
      t.string :carotte_card_name
      t.string :carotte_card_description
      t.integer :carotte_card_points

      t.timestamps
    end
  end
end
