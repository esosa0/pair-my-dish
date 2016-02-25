class AddReferenceToDish < ActiveRecord::Migration
  def change
    add_reference :dishes, :user, index: true
  end
end
