class Dish < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :cooking_method
end
