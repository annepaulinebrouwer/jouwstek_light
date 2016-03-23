class GardensController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :find_garden, only: [ :show ]

  def index
    @gardens = Garden.all

    @markers = Gmaps4rails.build_markers(@gardens) do |garden, marker|
      garden_link = view_context.link_to garden.title, garden_path(garden)
      marker.title garden.title
      marker.infowindow "<h4><u>#{ garden_link }</u></h4>
                        <i>#{ garden.photo }</i><br>
                         <i>#{ garden.address }</i><br>
                         <i>#{ garden.description }</i>"
      marker.lat garden.latitude
      marker.picture({
         url: "https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png", # up to you to pass the proper parameters in the url, I guess with a method from device
         width: 32,
         height: 32
      })
      marker.lng garden.longitude
    end
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
