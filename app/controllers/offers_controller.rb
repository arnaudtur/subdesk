class OffersController < ApplicationController


  def index
    @offers = policy_scope(Offer)
    if (params[:address].present? || params[:price].present? || params[:seats].present? || params[:rooms].present?)
      @offers = Offer.where("address Ilike ?", "%#{params[:address]}%") if params[:address]
      price = Offer.where("price ILIKE :price")
      min_price = params[:price].to_i - 1000
      max_price = params[:price].to_i + 51
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
    @user_logged = current_user
    @offers.each do |offer|
      offer.rate = offer.matching_r(@user_logged).to_i
    end

    @markers = @offers.geocoded.where.not(user: current_user).map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { offer: offer })
      }
    end

    @offers = @offers.sort_by { |offer| offer.rate }.reverse
  end

  def edit
    @offer = Offer.find(params[:id])
    authorize @offer
  end

  def update
    @offer = Offer.find(params[:id])
    @offer.update(params_offers)
    authorize @offer

    # no need for app/views/restaurants/update.html.erb
    redirect_to offer_path(@offer)
  end

  def show
    @offer = Offer.find(params[:id])
    authorize @offer
    @user_logged = current_user


    @markers = [{
      lat: @offer.latitude,
      lng: @offer.longitude,
      infoWindow: render_to_string(partial: "info_window", locals: { offer: @offer })
    }]
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
    # matching_r
    if @offer.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    authorize @offer
    redirect_to offers_path
  end


  private

  def params_offers
    params.require(:offer).permit(:status, :name, :price, :address, :description, :price, :total_seats, :seats, :room, :size, :question1, :question2, :question3, photos: [])
  end
end
