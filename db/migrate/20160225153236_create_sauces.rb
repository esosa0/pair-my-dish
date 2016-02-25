class CreateSauces < ActiveRecord::Migration
  def change
    create_table :sauces do |t|
      t.string :name
      t.integer :alcohol_min
      t.integer :alcohol_max
      t.integer :tannin_min
      t.integer :tannin_max
      t.integer :acid_min
      t.integer :acid_max

      t.timestamps null: false
    end
  end
end
