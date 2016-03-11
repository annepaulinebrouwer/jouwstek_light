module User
  class AllotmentsController < ApplicationController

    # before_action :find_allotment, only: [ :show, :edit, :update, :destroy ]

  def new
    @allotment = Allotment.new
  end

  def create
    @allotment = Allotment.new(allotment_params)
    @allotment.save!
    # redirect_to user_path(@)!!!!!!!
  end

  private

  def allotment_params
    params.require(:allotment).permit(:start_day, :request_status, :message)
  end

  # def find_allotment
  #   @allotment = Allotment.find(params[:id])
  # end

  end
end
