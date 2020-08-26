class OffersController < ApplicationController
  def new
    @offer = Offer.new
    authorize @offer
  end
  def create
    @offer = Offer.new(params_offers)
    @user = current_user
    @offer.user = @user
    @offer.status = 'Active'
    authorize @offer
    if @offer.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def params_offers
    params.require(:offer).permit(:status, :name, :price, :address, :description, :price, :total_seats, :seats, :room, :size, :question1, :question2, :question3)
  end
end
