class AddSauceToDishes < ActiveRecord::Migration
  def change
    add_reference :dishes, :sauce, index: true
  end
end
