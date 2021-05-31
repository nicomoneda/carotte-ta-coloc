class AddNameAvatarToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :coloc, null: false, foreign_key: true
    add_column :users, :avatar, :string
    add_column :users, :name, :string
  end
end
