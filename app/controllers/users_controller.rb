class UsersController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @user = current_user
    authorize @user
  end

  def edit
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    authorize @user

    # no need for app/views/restaurants/update.html.erb
    redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:photo, :name, :hq_address, :number_of_employees, :weblink, :field, :year_of_creation, :average_age, :description, :criteria1, :criteria2, :criteria3, :criteria4)
  end
end
