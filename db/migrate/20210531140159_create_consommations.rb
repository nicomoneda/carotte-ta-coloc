class CreateConsommations < ActiveRecord::Migration[6.0]
  def change
    create_table :consommations do |t|
      t.references :fun_card, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
