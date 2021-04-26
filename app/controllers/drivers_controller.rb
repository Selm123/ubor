class DriversController < ApplicationController
  def new
    @driver = Driver.new
  end

  def create
    @driver = Driver.new driver_params
    if @driver.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def driver_params
    params.require(:driver).permit(:email, :password, :password_confirmation)
  end
end
