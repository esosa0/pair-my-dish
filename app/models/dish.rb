class Dish < ActiveRecord::Base
  belongs_to :ingredient, required: true
  belongs_to :cooking_method, required: true
  belongs_to :user #, required: true
  belongs_to :sauce, required: true
  has_and_belongs_to_many :sides

  def name
    sides_array = []
    sides.each do |side|
      sides_array.push(side.name)
    end
    sides_sentence = sides_array.to_sentence
    name = "#{cooking_method.name} #{ingredient.name} in #{sauce.name} with #{sides_sentence}"
    return name
  end
end
