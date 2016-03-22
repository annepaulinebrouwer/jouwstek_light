class User::GardenReviewsController < ApplicationController

   before_action :find_allotment

  def new
    @garden_review = GardenReview.new
  end

  def create
    @garden_review = GardenReview.new(garden_review_params)
    @garden_review.user = current_user
    @garden_review.allotment = @allotment
    @garden_review.save!

    redirect_to user_allotments_path
  end


private

  def find_allotment
    @allotment = current_user.allotments.find(params[:allotment_id])
  end

  def garden_review_params
    params.require(:garden_review).permit(:description, :stars)
  end

end
