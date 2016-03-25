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
        flash[:notice] = "You are one step away from creating your garden. You need to complete your profile first!"
      end
    end

    def create
      @garden = Garden.new(garden_params)
      @garden.owner = current_user
      if @garden.save
        redirect_to owner_garden_path
      else
        flash[:alert] = "Unable to create your garden."
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
        flash[:alert] = "Hi #{current_user.first_name}, why deleting your garden? Checkout <a href='allotments'>here</a> who is still waiting to share your garden".html_safe
        render :show
      else
        @garden.destroy!
        redirect_to user_path(current_user)
        flash[:notice] = "Hi #{current_user.first_name}, you have scuccefully deleted the garden"
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
