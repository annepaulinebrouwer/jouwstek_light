module Owner
  class GardensController < ApplicationController

    before_action :find_garden, only: [ :show, :edit, :update, :destroy ]

    def show
    end

    def new
      # if check if methodd profile complete is true
      #
      @garden = Garden.new
      # else
      # redirect_to edit your profile with a flash message.
    end

    def create
      @garden = Garden.new(garden_params)
      @garden.owner = current_user
      @garden.save!
      redirect_to owner_garden_path
    end

    def edit
    end

    def update
      @garden.update(garden_params)
      redirect_to owner_garden_path
    end

    def destroy
      if current_user.garden_destroyable? == false
        flash[:alert] = "Hi #{current_user.first_name}, why deleting your garding, if there are still pioneers waiting to work with you.. Check it out <a href='allotments'>here</a>".html_safe
        render :show
      else
        @garden.destroy!
        redirect_to user_path(current_user)
        flash[:notice] = "Hi #{current_user.first_name}, you scuccefully deleted your garden"
      end
    end

  private

  def garden_params
    params.require(:garden).permit(
      :description,
      :address,
      :city,
      :available,
      :photo,
      :photo_cache,
      :photo2,
      :photo2_cache,
      :photo3,
      :photo3_cache
    )
  end

  def find_garden
    @garden = current_user.garden
  end

end
end
