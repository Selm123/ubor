class BookingsController < ApplicationController
  # before_action :check_for_customer_login, :only => [:new, :create,:show,:edit, :update, :destroy]
  # before_action :check_for_driver_login, :only => [:index,:show,:edit, :update]
  # Only customer could create new booking and cancel(delete, because we don't want unconfirmed booking in the db) booking. Only driver could view booking index. Only logged in users could view history booking(his own bookings) and change booking status.


  def index
    @bookings = Booking.all
  end
  
  def new
    @booking = Booking.new
    # check_for_customer_login_booking @booking
  end

  def create
    booking = Booking.create booking_params 
    @current_customer.bookings << booking
    redirect_to booking
  end

  def show
    @booking = Booking.find params[:id]
    # check_for_driver_login_booking(@booking)

    # using gon and geocoder to pass coordinates from rails to google map api, which is written in JavaScript
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
