class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all 
    authorize! :read, @ingredient
  end
end
