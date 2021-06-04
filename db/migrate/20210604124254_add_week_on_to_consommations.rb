class AddWeekOnToConsommations < ActiveRecord::Migration[6.0]
  def change
    add_column :consommations, :week_on, :date
  end
end
