class BookingsController < ApplicationController
  before_action :check_for_customer_login || :check_for_driver_login

  def index
    @bookings = Booking.all
  end
  
  def new
    @booking = Booking.new
  end

  def create
    booking = Booking.create booking_params 
    @current_customer.bookings << booking
    redirect_to booking
  end

  def show
    @booking = Booking.find params[:id]
    gon.from_address_lat=Geocoder.coordinates("#{@booking.from_address}")[0]
    gon.from_address_lon=Geocoder.coordinates("#{@booking.from_address}")[1]
    gon.to_address_lat=Geocoder.coordinates("#{@booking.to_address}")[0]
    gon.to_address_lon=Geocoder.coordinates("#{@booking.to_address}")[1]

  end

  def edit
    @booking = Booking.find params[:id]
  end

  def update
    booking = Booking.find params[:id]
    booking.update booking_params
    redirect_to booking
  end

  def destroy
    booking = Booking.find params[:id]
    booking.destroy
    redirect_to new_booking_path
end

  private
  def booking_params
    params.require(:booking).permit(:estimated_price, :customer_id, :driver_id, :from_address, :to_address)
  end
end
