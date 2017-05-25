class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @home = Home.first
    @recommendations = Recommendation.all
    @gardens = Garden.all
    # @markers = Gmaps4rails.build_markers(@gardens) do |garden, marker|
    #   marker.lat garden.latitude
    #   marker.lng garden.longitude
    # end
    @markers = Gmaps4rails.build_markers(@gardens) do |garden, marker|
      garden_link = view_context.link_to garden.title, garden_path(garden)
      marker.title garden.title
      marker.infowindow "<a href='#{garden_path(garden)}'>
                          <img src='#{ garden.photo }' class='marker-photo'/>
                        </a>
                        <br>
                        <h4 class='marker-name text-center'>#{ garden_link }</h4>
                         <p class='marker-address text-center'>#{ garden.full_address }</p>"
      marker.lat garden.latitude
      marker.picture({
        url: "#{view_context.image_path 'map-icon.png'}", # up to you to pass the proper parameters in the url, I guess with a method from device
        width: 36,
        height: 36
      })
      marker.lng garden.longitude
    end

    @users = User.all
    @user = User.first
  end

  def components
  end

end

