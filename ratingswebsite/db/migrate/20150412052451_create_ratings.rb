class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :rater_id
      t.date :date
      t.integer :price
      t.integer :food
      t.integer :mood
      t.integer :staff
      t.text :comments
      t.integer :restaurant_id

      t.timestamps null: false
    end
  end
end
