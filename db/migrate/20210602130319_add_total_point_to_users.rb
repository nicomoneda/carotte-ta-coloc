class AddTotalPointToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :total_points, :integer, default: 0, null: false
  end
end
