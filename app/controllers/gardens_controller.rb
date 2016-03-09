class GardensController < ApplicationController
  before_action :find_garden, only: [ :show ]

  def index
    @gardens = Garden.all
  end

   def show
    @garden
    @garden_coordinates = { lat: @garden.latitude, lng: @garden.longitude }
  end


  private

  def find_garden
    @garden = Garden.find(params[:id])
  end


end
