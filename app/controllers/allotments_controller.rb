class AllotmentsController < ApplicationController

   # before_action :find_allotment, only: [ :show, :edit, :update, :destroy ]
     before_action :find_garden, only: [ :create ]

  def new
    @allotment = Allotment.new
    @garden = find_garden
  end

  def create
    @allotment = Allotment.new(allotment_params)
    @allotment.request_status = "pending"
    @allotment.user = current_user
    @allotment.garden = @garden


    if @allotment.save
      redirect_to user_allotments_path
    else
      render :new
    end
  end

  private

  def allotment_params
    params.require(:allotment).permit(:start_day, :end_day, :request_status, :message)
  end

  def find_garden
    @garden = Garden.find(params[:garden_id])
  end

  # def find_allotment
  #   @allotment = Allotment.find(params[:id])
  # end

end

