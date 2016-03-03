class Dish < ActiveRecord::Base
  belongs_to :ingredient, required: true
  belongs_to :cooking_method, required: true
  belongs_to :user #, required: true
  belongs_to :sauce, required: true
  has_many :aromas, through: :sides
  has_and_belongs_to_many :sides

  def name
    
    name = "#{cooking_method.name} #{ingredient.name} in #{sauce.name}"

    sides_array = []
    sides.each do |side|
      sides_array.push(side.name)
    end
    
    if sides_array.length == 0
      return name

    else 
      sides_sentence = " with #{sides_array.to_sentence}"
      name += "#{sides_sentence}"
      return name
    end
  end
end
