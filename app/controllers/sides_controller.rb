class SidesController < ApplicationController
  @sides = Side.all
  before_action :authenticate_user!

  def create
    @side = Side.new side_params
    authorize! :create, @side
    if @side.save
      flash[:success] = "Success."
      redirect_to sides_path
    else
      render "new"
    end
  end

  def new
    @side = Side.new
    authorize! :create, @side
  end

  def index
    @sides = Side.all 
    authorize! :read, Side
  end

  def edit
    @side = Side.find params[:id]
    authorize! :update, @side
  end

  def update
    @side = Side.find params[:id]
    authorize! :update, @side
    if @side.update_attributes side_params
      redirect_to sides_path
    else
      render 'edit'
    end
  end

  def destroy
    @side = Side.find params[:id]
    authorize! :destroy, @side
    @side.destroy
    flash[:alert] = "Entry has been deleted"
    redirect_to sides_path
  end

  private

  def side_params
    params.require(:side).permit(:name, :kind, :aroma_ids => [])
  end

end
