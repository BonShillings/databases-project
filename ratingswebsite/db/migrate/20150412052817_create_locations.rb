class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.date :opening_date
      t.string :manager_name
      t.string :phone_number
      t.string :street_address
      t.string :hour_open
      t.string :hour_close
      t.integer :restaurant_id

      t.timestamps null: false
    end
  end
end
