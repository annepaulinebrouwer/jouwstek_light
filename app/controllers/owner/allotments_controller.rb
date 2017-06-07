class Owner::AllotmentsController < ApplicationController

  before_action :find_allotment, only: [ :show, :accept, :decline ]

  def index
    @allotments = current_user.garden_allotments
  end

  def show
  end

  def accept
    @allotment.request_status = "accepted"
    if @allotment.save
      redirect_to owner_allotments_path(accepted: "active")
      flash[:notice] = "#{@allotment.user.first_name} is geaccepteerd!"
      UserMailer.accept_allotment_request(@allotment).deliver_now
    else
      flash[:warning] = 'Het is niet mogelijk de boeking te accepteren. Neem contact op met info@jouwstek.org'
      redirect_to owner_allotments_path
    end
  end

  def decline
    @allotment.request_status = "declined"
    if @allotment.save
      redirect_to owner_allotments_path
      UserMailer.decline_allotment_request(@allotment).deliver_now
    else
      flash[:warning] = 'Het is niet mogelijk de boeking te weigeren. Neem contact op met info@jouwstek.org'
      redirect_to owner_allotments_path
    end
  end

  private

  def find_allotment
    @allotment = Allotment.find(params[:id])
  end

end
