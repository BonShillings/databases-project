class ChangeRiColumnName < ActiveRecord::Migration
  def change
      rename_column :rating_items, :rating_id, :item_rating
  end
end
