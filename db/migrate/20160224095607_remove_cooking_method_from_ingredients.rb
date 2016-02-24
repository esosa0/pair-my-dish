class RemoveCookingMethodFromIngredients < ActiveRecord::Migration
  def change
    remove_column :ingredients, :cooking_method, :string
  end
end
