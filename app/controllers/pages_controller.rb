class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @gardens = Garden.all
    @markers = Gmaps4rails.build_markers(@gardens) do |garden, marker|
      marker.lat garden.latitude
      marker.lng garden.longitude
    end
  end
end
