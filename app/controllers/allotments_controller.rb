class AllotmentsController < ApplicationController

   # before_action :find_allotment, only: [ :show, :edit, :update, :destroy ]

  def new
    @allotment = Allotment.new
    @garden = find_garden
  end

  def create
    @allotment = Allotment.new(allotment_params)
    @allotment.save!
    redirect_to user_allotments_path
  end

  private

  def allotment_params
    params.require(:allotment).permit(:start_day, :request_status, :message)
  end

  def find_garden
    @garden = Garden.find(params[:garden_id])
  end

  # def find_allotment
  #   @allotment = Allotment.find(params[:id])
  # end

end

