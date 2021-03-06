class User::ProfilesController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to user_profile_path
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :description, :photo, :photo_cache)
  end
end
