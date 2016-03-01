class ApiController < ApplicationController
  protect_from_forgery with: :null_session
  
  def index 
    ingredient = Ingredient.find(params[:ingredient_id])
    cooking_method = CookingMethod.find(params[:cooking_method_id])
    sauce = Sauce.find(params[:sauce_id])

    dish = Dish.new(
      ingredient: ingredient, 
      cooking_method: cooking_method, 
      sauce: sauce,
      side_ids: params[:side_ids]
    )
    
    wines = Wine.pair(dish)
    render json: wines
  end

end
