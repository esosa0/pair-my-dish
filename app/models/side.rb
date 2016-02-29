class Side < ActiveRecord::Base
  has_and_belongs_to_many :dishes
  has_and_belongs_to_many :aromas
end
