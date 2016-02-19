class AromasController < ApplicationController
  def index
    @aromas = Aroma.all
  end
end
