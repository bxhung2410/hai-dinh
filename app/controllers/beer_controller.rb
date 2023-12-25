class BeerController < ApplicationController
  def index
    @beers = Beer.all
  end

  def show
    @beer = Beer.find_by_id(params[:id])
  end
end