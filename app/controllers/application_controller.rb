class ApplicationController < ActionController::Base
    before_action :fetch_customer
    before_action :fetch_driver

    private
    def fetch_customer
        @current_customer = Customer.find_by :id => session[:customer_id] if session[:customer_id].present?
        session[:customer_id] = nil unless @current_customer.present? # Log out non-existant customers
    end

    def fetch_driver
        @current_driver = Driver.find_by :id => session[:driver_id] if session[:driver_id].present?
        session[:driver_id] = nil unless @current_driver.present? # Log out non-existant drivers
    end

    def check_for_customer_login
        redirect_to customer_login_path unless (@current_customer.present? || @current_driver.present?)
    end

    def check_for_driver_login
        redirect_to driver_login_path unless (@current_customer.present? || @current_driver.present?)
    end

    def check_for_admin
        redirect_to root_path unless (@current_customer.present? && @current_customer.admin?)
    end
end