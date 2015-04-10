class CreateMenuitems < ActiveRecord::Migration
  def change
    create_table :menuitems do |t|
      t.string :name
      t.string :mtype
      t.string :mcategory
      t.text :description
      t.decimal :price
      t.integer :restaurantID

      t.timestamps null: false
    end
  end
end
