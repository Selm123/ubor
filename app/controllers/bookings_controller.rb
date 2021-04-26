class BookingsController < ApplicationController
  before_action :check_for_login
  
  def new
    @booking = Booking.new
  end

  def create
    booking = Booking.create booking_params
    @current_customer.bookings << booking
    redirect_to root_path
  end

  private
  def booking_params
    params.require(:booking).permit(:estimated_price)
  end
end
