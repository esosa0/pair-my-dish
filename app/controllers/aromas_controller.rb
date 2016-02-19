class AromasController < ApplicationController
  before_action :authenticate_user!
  def index
    @aromas = Aroma.all
  end
end
