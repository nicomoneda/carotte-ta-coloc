class AddImageToFunCard < ActiveRecord::Migration[6.0]
  def change
    add_column :fun_cards, :image, :string
  end
end
