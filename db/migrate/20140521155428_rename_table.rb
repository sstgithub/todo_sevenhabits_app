class RenameTable < ActiveRecord::Migration
  def change
  	rename_table :categories_tables, :categories
  end
end
