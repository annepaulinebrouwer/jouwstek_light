class GardensController < ApplicationController
  skip_before_action :authenticate_user!
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

  def garden_params
    params.require(:garden).permit(:title, :address, :available, :description, :photo, :photo_cache)
  end
end
