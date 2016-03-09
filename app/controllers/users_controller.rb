class UsersController < ApplicationController
  before_action :find_user, only: [ :show, :edit, :update, :destroy ]

  def show
    @user = User.find(params[:id])
  end

end
