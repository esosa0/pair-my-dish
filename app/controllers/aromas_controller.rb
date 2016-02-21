class AromasController < ApplicationController
  before_action :authenticate_user!

  def index
    @aromas = Aroma.all
    authorize! :read, Aroma
  end

end
