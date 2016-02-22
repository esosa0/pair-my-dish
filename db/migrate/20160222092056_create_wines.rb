class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :name
      t.integer :body
      t.integer :alcohol
      t.integer :tannin
      t.integer :acid
      t.integer :sweetness
      t.boolean :sparkling

      t.timestamps null: false
    end
  end
end
