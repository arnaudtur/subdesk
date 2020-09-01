class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer
  has_one :chatroom

end


# Booking.my_bookings(current_user)
