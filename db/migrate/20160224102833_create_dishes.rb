class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.belongs_to :ingredient, index: true
      t.belongs_to :cooking_method, index: true
      t.boolean :sweet
      t.boolean :spicy

      t.timestamps null: false
    end
  end
end
