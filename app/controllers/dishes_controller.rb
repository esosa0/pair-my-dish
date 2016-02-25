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
      @ingredients = Ingredient.all
      @cooking_methods = CookingMethod.all 
      render "new"
    end
  end

  def index
    dish = Dish.last
    @my_dish = "#{dish.cooking_method.name} #{dish.ingredient.name}"
    @dishes = Dish.all

  end

  def destroy
    @dishes = Dish.all
    @dish = @dishes.find params[:id]
    @dish.destroy
    flash[:alert] = "Dish has been deleted"
    redirect_to dishes_path
  end

  private

  def dish_params
    params.require(:dish).permit(:ingredient_id, :cooking_method_id)
  end
end
