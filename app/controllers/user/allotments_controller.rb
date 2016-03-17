class User::AllotmentsController < ApplicationController

   before_action :find_allotment, only: [ :cancel ]

  def index
    @allotments = current_user.allotments
  end

  def cancel
    @allotment.status_request = "cancelled"
     if @allotment.save
      redirect_to user_allotments_index
    else
      redirect_to user_allotments_index
      flash[:warning] = 'Canceling the garden didn work'
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
