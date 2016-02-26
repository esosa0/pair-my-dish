class SaucesController < ApplicationController
  def index
    @sauces = Sauce.all
  end
  def destroy
    @sauces = Sauce.all
    @sauce = @sauces.find params[:id]
    @sauce.destroy
    flash[:alert] = "Sauce has been deleted"
    redirect_to sauces_path
  end
end
