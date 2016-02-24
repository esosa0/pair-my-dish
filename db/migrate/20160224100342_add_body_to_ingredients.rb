class AddBodyToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :body_min, :integer
    add_column :ingredients, :body_max, :integer
  end
end
