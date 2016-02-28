class SaucesController < ApplicationController
  before_action :authenticate_user!
  def index
    @sauces = Sauce.all
    authorize! :read, Sauce
  end
  def destroy
    @sauce = Sauce.find params[:id]
    authorize! :destroy, @sauce
    @sauce.destroy
    redirect_to sauces_path, alert: "Sauce has been deleted"
  end
end
