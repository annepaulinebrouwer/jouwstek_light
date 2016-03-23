class Owner::UserReviewsController < ApplicationController

   before_action :find_allotment

  def new
    @user_review = UserReview.new
  end

  def create
    @user_review = UserReview.new(user_review_params)
    @user_review.owner = current_user
    @user_review.user = @allotment.user
    @user_review.save!
    @user= @allotment.user_id

    redirect_to user_path(@user)
  end

private

  def find_allotment
    @allotment = current_user.garden_allotments.find(params[:allotment_id])
  end

  def user_review_params
    params.require(:user_review).permit(:description, :stars)
  end

end
