class Ingredient < ActiveRecord::Base
  has_and_belongs_to_many :wines
  has_and_belongs_to_many :aromas
end
