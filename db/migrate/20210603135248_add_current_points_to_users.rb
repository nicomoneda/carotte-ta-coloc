class AddCurrentPointsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :current_points, :integer, default: 0
  end
end
