class User::AllotmentsController < ApplicationController

   before_action :find_allotment, only: [ :cancel ]

  def index
    @allotments = current_user.allotments
  end

  def cancel
    @allotment.request_status = "cancelled"
     if @allotment.save
      redirect_to user_allotments_path
    else
      flash[:warning] = 'Canceling the garden didn work'
      redirect_to user_allotments_path
    end
  end

  # def update
  #   @garden.update!(garden_params)
  # redirect_to garden_path(@garden)
  # end

  # def destroy
  #   @garden.destroy!
  # redirect_to user_path(@user_id)
  # end
  #
private

  def find_allotment
    @allotment = Allotment.find(params[:id])
  end

end
