class CreateRaters < ActiveRecord::Migration
  def change
    create_table :raters do |t|
      t.string :email
      t.string :name
      t.date :join_date
      t.string :rtype
      t.integer :reputation

      t.timestamps null: false
    end
  end
end
