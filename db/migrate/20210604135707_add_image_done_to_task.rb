class AddImageDoneToTask < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :image_done, :string
  end
end
