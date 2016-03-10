class UserReviewsController < ApplicationController

  def show
    @user = UserReview.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:user, :description, :stars)
  end
end
