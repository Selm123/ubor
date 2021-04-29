class DriverSessionController < ApplicationController
    def new
    end

    def create
        driver = Driver.find_by :email => params[:email]
        if driver.present? && driver.authenticate(params[:password])
            session[:driver_id] = driver.id
            redirect_to bookings_path
        else
            flash[:error_message] = "Invalid email or password"
            redirect_to driver_login_path
        end
    end

    def destroy
        session[:driver_id] = nil
        redirect_to driver_login_path
    end
end