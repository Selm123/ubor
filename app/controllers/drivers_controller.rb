class DriversController < ApplicationController
  before_action :check_for_driver_login, :except => [:new, :create]
  # before_action :check_for_admin, :only => [:index]

  # def index
  #   @drivers = Driver.all
  # end
  # not allowed to see driver index for now, new feature to be added in the future

  def new
    @driver = Driver.new
  end

  def create
    @driver = Driver.new driver_params
    if @driver.save
      session[:driver_id] = @driver.id
      redirect_to bookings_path
    else
      render :new
    end
  end

  def show
    @driver = Driver.find params[:id]
  end

  def edit
    @driver = Driver.find params[:id]
  end

  def update
    driver = Driver.find params[:id]
    driver.update driver_params
    redirect_to driver
  end

  def destroy
    driver = Driver.find params[:id]
    driver.destroy
    redirect_to drivers_path
end

  private
  def driver_params
    params.require(:driver).permit(:first_name, :last_name, :street, :suburb, :postcode, :state, :email, :password, :password_confirmation, :phone, :bank_bsb_no, :bank_account_no, :car_model_id, :driver_license_no)
  end
end
