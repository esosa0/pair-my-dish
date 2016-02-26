class Dish < ActiveRecord::Base
  belongs_to :ingredient, required: true
  belongs_to :cooking_method, required: true
  belongs_to :user #, required: true
  belongs_to :sauce, required: true

end
