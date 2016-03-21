class Owner::AllotmentsController < ApplicationController

  before_action :find_allotment, only: [ :accept, :decline ]

  def index
    @allotments = current_user.garden_allotments
  end

  def accept
    @allotment.request_status = "accepted"
    if @allotment.save
      redirect_to owner_allotments_path
    else
      flash[:warning] = 'Canceling the garden did not work'
      redirect_to owner_allotments_path
    end
  end

  def decline
    @allotment.request_status = "declined"
    if @allotment.save
      redirect_to owner_allotments_path
    else
      flash[:warning] = 'Declining the garden did not work'
      redirect_to owner_allotments_path
    end
  end

  private

  def find_allotment
    @allotment = Allotment.find(params[:id])
  end

end
