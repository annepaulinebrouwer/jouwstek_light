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
      flash[:warning] = 'Het was niet mogelijk om de boeking te annuleren'
      redirect_to user_allotments_path
    end
  end

private

  def find_allotment
    @allotment = Allotment.find(params[:id])
  end

end
