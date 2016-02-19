class CreateAromas < ActiveRecord::Migration
  def change
    create_table :aromas do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
