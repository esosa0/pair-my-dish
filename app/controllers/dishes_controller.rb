class DishesController < ApplicationController
  def new
    @dish = Dish.new 
    @user = User.new 
  end

  def create
    @dish = current_user.dishes.build dish_params
    if @dish.save
      flash[:success] = "Success! Dish was saved."
      redirect_to dish_path(@dish.id)
    else
      flash[:danger] = "Dish was not saved"
      @user = current_user 
      render "new"
    end
  end

  def show
    @dish = Dish.find(params[:id])
    @wines = Wine.pair(@dish)
  end


  def index
    @dishes = current_user.dishes
    @dish = @dishes.last
  end

  def destroy
    @dish = Dish.find params[:id]
    @dish.destroy
    flash[:alert] = "Dish has been deleted"
    redirect_to dishes_path
  end

  private

  def dish_params
    params.require(:dish).permit(:ingredient_id, :cooking_method_id, :sauce_id, :side_ids => [])
  end
end
