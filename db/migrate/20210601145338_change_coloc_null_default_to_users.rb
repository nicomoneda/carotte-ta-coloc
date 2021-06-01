class ChangeColocNullDefaultToUsers < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:users, :coloc_id, true)
  end
end
