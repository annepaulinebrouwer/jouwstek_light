class GardensController < ApplicationController
before_action :find_garden, only: [ :show, :edit, :update, :destroy ]

  def index
    @gardens = Garden.all
  end

   def show
    @garden
  end

  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(garden_params)
    if @garden.save
        redirect_to garden_path(@garden)
    else
        render :new
    end
  end

  def edit
    @garden
  end


  def update
    @garden.update!(garden_params)
  redirect_to garden_path(@garden)
  end

  def destroy
    @garden.destroy!
  redirect_to user_path(@user_id)
  end

  private

  def garden_params
    params.require(:garden).permit(:description, :address, :available, :photo, :photo_cache)
  end

  def find_garden
    @garden = Garden.find(params[:id])
  end


end
