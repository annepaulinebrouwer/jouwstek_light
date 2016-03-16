class User::AllotmentsController < ApplicationController

  def index
    @allotments = current_user.allotments
  end

end
