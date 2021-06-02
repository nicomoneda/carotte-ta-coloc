class AddTotalPointsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :total_points, :integer, null: false
  end
end
