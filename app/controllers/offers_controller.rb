class OffersController < ApplicationController

  def index

    @offers = policy_scope(Offer)
    if (params[:address].present? || params[:price].present? || params[:seats].present? || params[:rooms].present?)

      @offers = Offer.where("name Ilike ?", "%#{params[:address]}%") if params[:address]

      price = Offer.where("price ILIKE :price")
      min_price = params[:price].to_i - 300
      max_price = params[:price].to_i + 300
      @offers = @offers.where("price > ?", min_price).where("price < ?", max_price) if params[:price].present?

      seats = Offer.where("seats ILIKE :seats")
      max_seats = params[:seats].to_i + 5
      min_seats = params[:seats].to_i - 5
      @offers = @offers.where("seats > ?", min_seats).where("seats < ?", max_seats) if params[:seats].present?

      rooms = Offer.where("rooms ILIKE :rooms")
      max_rooms = params[:rooms].to_i + 5
      min_rooms = params[:rooms].to_i - 5
      @offers = @offers.where("room > ?", min_rooms).where("room < ?", max_rooms) if params[:rooms].present?

    else
      @offers = policy_scope(Offer)
    end
  end

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
