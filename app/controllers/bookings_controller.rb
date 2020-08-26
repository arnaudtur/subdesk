class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking)
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


  private

  def params_bookings
    params.require(:booking).permit(:status, :start_date, :end_date, :answer1, :answer2, :answer3)
  end
end
