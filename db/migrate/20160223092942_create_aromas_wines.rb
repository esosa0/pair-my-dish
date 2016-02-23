class CreateAromasWines < ActiveRecord::Migration
  def change
    create_table :aromas_wines, id: false do |t|
      t.belongs_to :aroma, index: true
      t.belongs_to :wine, index: true
    end
  end
end
