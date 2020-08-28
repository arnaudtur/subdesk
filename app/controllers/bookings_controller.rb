class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking)
    @user_logged = current_user
  end


  def new
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(params_bookings)
    @booking.offer = Offer.find(params[:offer_id])
    @booking.status = 'Pending'
    authorize @booking
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(params_bookings)
    authorize @booking

    # no need for app/views/restaurants/update.html.erb
    redirect_to bookings_path
  end

  def accepter_booking
    @booking = Booking.find(params[:id])
    @booking.status == "Discussion" ? @booking.status = "Accepter" : @booking.status = "Discussion"
    @booking.save
    redirect_to bookings_path
    authorize @booking
  end

  private

  def params_bookings
    params.require(:booking).permit(:status, :start_date, :end_date, :answer1, :answer2, :answer3)
  end
end
