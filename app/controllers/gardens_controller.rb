class GardensController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :find_garden, only: [ :show ]

  def index
    @gardens = Garden.all

    @markers = Gmaps4rails.build_markers(@gardens) do |garden, marker|
      garden_link = view_context.link_to garden.title, garden_path(garden)
      marker.title garden.title
      marker.infowindow "<a href='#{garden_path(garden)}'>
                          <img src='#{ garden.photo }' class='marker-photo'/>
                        </a>
                        <br>
                        <h4 class='marker-name text-center'>#{ garden_link }</h4>
                         <p class='marker-address text-center'>#{ garden.address }, #{ garden.city } </p>"
      marker.lat garden.latitude
      marker.picture({
          url: "https://40.media.tumblr.com/bd28bda80a014c88c2588ebc0c3f007e/tumblr_o4ri1oe7Ko1qjknfdo1_75sq.png", # up to you to pass the proper parameters in the url, I guess with a method from device
         width: 40,
         height: 40
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
