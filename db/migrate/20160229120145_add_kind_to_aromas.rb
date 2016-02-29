class AddKindToAromas < ActiveRecord::Migration
  def change
    add_column :aromas, :kind, :string
  end
end
