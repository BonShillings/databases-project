class CreateRatingItems < ActiveRecord::Migration
  def change
    create_table :rating_items do |t|
      t.integer :rater_id
      t.date :date
      t.integer :menuitem_id
      t.integer :rating_id
      t.string :comment

      t.timestamps null: false
    end
  end
end
