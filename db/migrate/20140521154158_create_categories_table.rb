class CreateCategoriesTable < ActiveRecord::Migration
  def change
    create_table :categories_tables do |t|
      t.string :name
    end
  end
end
