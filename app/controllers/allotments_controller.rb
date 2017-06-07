class AllotmentsController < ApplicationController

   # before_action :find_allotment, only: [ :show, :edit, :update, :destroy ]
     before_action :find_garden, only: [ :create ]

  def new

    if current_user.profile_complete? == true
      @allotment = Allotment.new
      @garden = find_garden
    else
      redirect_to edit_user_profile_path
      flash[:notice] = "Je bent twee stappen verwijderd van het boeken van deze Stek. Zorg eerst dat je profiel compleet is, daarna kan je de tuin boeken!"
    end

  end

  def create
    @allotment = Allotment.new(allotment_params)
    @allotment.request_status = "pending"
    @allotment.user = current_user
    @allotment.garden = @garden


    if @allotment.save
      UserMailer.request_allotment(current_user.id, @allotment).deliver_now
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

