class UsersController < ApplicationController
  skip_before_action :authenticate_user!

def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  private
  def user_params
    params.require(:user).permit(:name, :description, :photo, :photo_cache)
  end
end



