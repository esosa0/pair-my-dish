class WinesController < ApplicationController
  before_action :authenticate_user!

  def create
    @wine = Wine.new wine_params
    authorize! :create, @wine
    if @wine.save
      flash[:success] = "Success."
      redirect_to wines_path
    else
      render "new"
    end
  end

  def new
    @wine = Wine.new
    authorize! :create, @wine
  end

  def index
    @wines = Wine.all 
    authorize! :read, @wines
  end

  def edit
    @wines = Wine.all
    @wine = @wines.find params[:id]
  end

  def update
    @wines = Wine.all
    @wine = @wines.find params[:id]
    if @wine.update_attributes wine_params
      redirect_to wines_path
    else
      render 'new'
    end
  end

  def destroy
    @wines = Wine.all
    @wine = @wines.find params[:id]
    @wine.destroy
    flash[:alert] = "Entry has been deleted"
    redirect_to wines_path
  end

  private

  def wine_params
    params.require(:wine).permit(:name, :body, :alcohol, :tannin, :acid, :sweetness, :sparkling, :aroma_ids => [])
  end

end
