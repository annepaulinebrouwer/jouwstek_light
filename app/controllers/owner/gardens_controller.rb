module Owner
  class GardensController < ApplicationController

    before_action :find_garden, only: [ :show, :edit, :update, :destroy ]

    def show
    end

    def new
      if current_user.profile_complete? == true
        @garden = Garden.new
      else
        redirect_to edit_user_profile_path
        flash[:notice] = "Je bent één stap verwijderd van het aanmaken van Jouw Stek. Zorg eerst dat je profiel compleet is."
      end
    end

    def create
      @garden = Garden.new(garden_params)
      @garden.owner = current_user
      if @garden.save
        redirect_to owner_garden_path
      else
        flash[:alert] = "Het was niet mogelijk een tuin te maken"
        render :new
      end
    end

    def edit
    end

    def update
      @garden.update(garden_params)
      redirect_to owner_garden_path
    end

    def destroy
      if current_user.garden_destroyable? == false
        flash[:alert] = "Hi #{current_user.first_name}, waarom zou je je tuin verwijderen? Bekijk <a href='allotments'>hier</a> wie er nog geintereserd is in Jouw Stek".html_safe
        render :show
      else
        @garden.destroy!
        redirect_to user_path(current_user)
        flash[:notice] = "Hi #{current_user.first_name}, je hebt succesvol je tuin verwijderd"
      end
    end

  private

  def garden_params
    params.require(:garden).permit(
      :title,
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
