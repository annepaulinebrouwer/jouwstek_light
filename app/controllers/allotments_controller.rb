class AllotmentsController < ApplicationController
  def index
    @allotments = Allotment.all
    redirect_to profile_path(@user)
  end

   def new
    @allotment = Allotment.new
  end

  def create
    @allotment = Allotment.new(params.require(:allotment).permit(:start_day, :request_status, :message, :garden_id, :user_id))
    @garden = Garden.find(params[:garden_id])
    @allotment.garden = @garden
    if @allotment.save
        redirect_to garden_path(@garden)
    else
        render :new
    end
  end

  def destroy
    allotment = Allotment.find(params[:id])
    allotment.destroy
    redirect_to profile_path(@user)
  end

  def accept

  end

  def decline

  end

end
