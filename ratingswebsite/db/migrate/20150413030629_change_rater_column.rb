class ChangeRaterColumn < ActiveRecord::Migration
  def change
      rename_column :raters, :name, :rater_name
  end
end
