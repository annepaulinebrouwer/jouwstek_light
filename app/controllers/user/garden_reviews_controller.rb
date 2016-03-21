class User::Garden_reviewsController < ApplicationController

   before_action :find_allotment, only: [ :cancel ]

  def new
  @Garden_review = Garden_review.new
  end

  def create
    @garden_review = Garden_review.new(garden_arams)
    @garden.garden_review = current_user
    @garden_review.save!
  end

  def edit

  end

  def update

  end

private

  def garden_params
    params.require(:garden).permit(:description, :address, :available, :photo, :photo_cache)
  end

end
