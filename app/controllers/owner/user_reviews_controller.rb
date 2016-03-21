class Owner::UserReviewsController < ApplicationController

   before_action :find_allotment

  def new
    @user_review = UserReview.new
  end

  def create
    @user_review = UserReview.new(user_review_params)
    @user_review.owner = current_user
    @user_review.allotment = @allotment
    @user_review.save!

    redirect_to user_allotments_path
  end

private

  def find_allotment
    @allotment = current_user.allotments.find(params[:allotment_id])
  end

  def user_review_params
    params.require(:user_review).permit(:description, :stars)
  end

end
