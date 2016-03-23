module Owner
  class GardensController < ApplicationController

    before_action :find_garden, only: [ :show, :edit, :update, :destroy ]

    def show
    end

    def new
      @garden = Garden.new
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
      if @garden.allotments.empty?
      @garden.destroy!
      redirect_to user_path(@user_id)
      else
        flash[:warning] = 'You can only delete a garden if the garden has no allotments'
        redirect_to user_path(@user_id)
      end
    end

  private

  def garden_params
    params.require(:garden).permit(
      :description,
      :address,
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
