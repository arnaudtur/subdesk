class UsersController < ApplicationController
  skip_before_action :authenticate_user!

  def show
  @user = User.find(params[:id])
  authorize @user
  end

  def edit
  @user = User.find(params[:id])
  authorize @user
  end

private
  def user_params
    params.require(:user).permit(:photo)
  end
end



