class AddIndexToCategoryIdInMeals < ActiveRecord::Migration[7.0]
  def change
    add_index :meals, :category_id
  end
end
