class Owner::AllotmentsController < ApplicationController

  def index
    @allotments = current_user.garden_allotments
  end

end
