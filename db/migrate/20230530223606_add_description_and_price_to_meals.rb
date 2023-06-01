class AddDescriptionAndPriceToMeals < ActiveRecord::Migration[7.0]
  def change
    add_column :meals, :description, :text
    add_column :meals, :price, :decimal
  end
end
