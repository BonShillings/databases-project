class ChangeColumnName < ActiveRecord::Migration
  def change
      rename_column :menuitems, :restaurantID, :restaurant_id
  end
end
