class WinesController < ApplicationController
  before_action :authenticate_user!

  def create
    @wine = Wine.new wine_params
    authorize! :create, @wine
    if @wine.save
      redirect_to wines_path
    else
      render "new"
    end
  end

  def new
    @wine = Wine.new
    authorize! :create, @wine
  end

  private

  def wine_params
    params.require(:wine).permit(:name, :body, :alcohol, :tannin, :acid, :sweetness, :sparkling)
  end

end
