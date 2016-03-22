class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @gardens = Garden.all
    # @markers = Gmaps4rails.build_markers(@gardens) do |garden, marker|
    #   marker.lat garden.latitude
    #   marker.lng garden.longitude
    # end
    @markers = Gmaps4rails.build_markers(@gardens) do |garden, marker|
    garden_link = view_context.link_to garden.title, garden_path(garden)
    marker.title garden.title
    marker.infowindow "<h4><u>#{ garden_link }</u></h4>
                       <i>#{ garden.address }</i><br>
                       <i>#{ garden.description }</i>"
    marker.lat garden.latitude
    marker.lng garden.longitude
end
    @users = User.all
    @user = User.first
  end

  def components
  end

end

