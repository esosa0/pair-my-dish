class DishesController < ApplicationController
  def new
    @dish = Dish.new 
    @ingredients = Ingredient.all
    @cooking_methods = CookingMethod.all 
  end

  def create
    @dish = Dish.new dish_params
    if @dish.save
      flash[:success] = "Success! Dish was saved."
    redirect_to dishes_path
    else
      flash[:danger] = "Dish was not saved"
      render "new"
    end
  end

  def index
    @my_dish = Dish.last 

  end

  private

  def dish_params
    params.require(:dish).permit(:ingredient_id, :cooking_method_id)
  end
end
