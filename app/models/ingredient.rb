class Ingredient < ActiveRecord::Base
  has_many :dishes
end
