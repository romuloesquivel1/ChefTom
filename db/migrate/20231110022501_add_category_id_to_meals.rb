class AddCategoryIdToMeals < ActiveRecord::Migration[7.0]
  def change
    rename_column :meals, :category, :category_old
    add_column :meals, :category_id, :integer
  end
end
