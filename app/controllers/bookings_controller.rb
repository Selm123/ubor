class BookingsController < ApplicationController
  before_action :check_for_customer_login

  def index
    @bookings = Booking.all
  end
  
  def new
    @booking = Booking.new
  end

  def create
    booking = Booking.create booking_params
    @current_customer.bookings << booking
    redirect_to root_path
  end

  def show
    @booking = Booking.find params[:id]
  end

  def edit
    @booking = Booking.find params[:id]
  end

  def update
    customer = Customer.find params[:id]
    customer.update customer_params
    redirect_to customer
  end

  def destroy
    customer = Customer.find params[:id]
    customer.destroy
    redirect_to customers_path
end

  private
  def booking_params
    params.require(:booking).permit(:estimated_price, :customer_id, :driver_id, :from_address, :to_address)
  end
end
