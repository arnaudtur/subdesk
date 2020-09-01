class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking)
    @user_logged = current_user
    params[:status] = params[:status] || ["En Attente", "Discussion"]
    @bookings = @bookings.where(status:params[:status])
  end


  def new
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(params_bookings)
    @booking.offer = Offer.find(params[:offer_id])
    @booking.status = 'En Attente'
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

  def accepter_discuss_booking
    @booking = Booking.find(params[:booking_id])
    @booking.status = "Discussion"
    @chatroom = Chatroom.new
    @chatroom.booking = @booking
    @chatroom.save
    @booking.save
    redirect_to bookings_path
    authorize @booking
  end

  def accepter_booking
    @booking = Booking.find(params[:booking_id])
    if @booking.status == "Discussion"
    @booking.status = "Acceptée"
    @booking.save
    redirect_to bookings_path
    authorize @booking
    end
  end

  def cancel_booking
    @booking = Booking.find(params[:booking_id])
    @booking.status = "Annulée"
    @booking.save
    redirect_to bookings_path
    authorize @booking
  end

  def refused_booking
    @booking = Booking.find(params[:booking_id])
    @booking.status = "Refusée"
    @booking.save
    redirect_to bookings_path
    authorize @booking
  end



  private

  def params_bookings
    params.require(:booking).permit(:status, :start_date, :end_date, :answer1, :answer2, :answer3)
  end
end
