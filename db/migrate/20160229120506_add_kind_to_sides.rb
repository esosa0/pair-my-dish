class AddKindToSides < ActiveRecord::Migration
  def change
    add_column :sides, :kind, :string
  end
end
