class User::GardenReviewsController < ApplicationController

   before_action :find_allotment, only: [ :cancel ]

  def new
  @Garden_review = GardenReview.new
  end

  def create
    allotment = current_user.allotments.find(params[:allotment_id])
    @garden_review = GardenReview.new(garden_params)
    @garden_review.user = current_user
    @garden_review.allotment = allotment
    @garden_review.save!

    redirect_to user_allotments_path
  end

  def edit

  end

  def update

  end

private

  def garden_params
    params.require(:garden_review).permit(:description, :stars)
  end

end
