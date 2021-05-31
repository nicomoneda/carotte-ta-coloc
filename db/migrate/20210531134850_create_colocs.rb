class CreateColocs < ActiveRecord::Migration[6.0]
  def change
    create_table :colocs do |t|
      t.string :name

      t.timestamps
    end
  end
end
