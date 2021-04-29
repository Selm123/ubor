class CustomerSessionController < ApplicationController
    def new
    end
  
    def create
      customer = Customer.find_by :email => params[:email]
      if customer.present? && customer.authenticate(params[:password])
        session[:customer_id] = customer.id
        redirect_to new_booking_path
      else
        flash[:error_message] = "Invalid email or password"
        redirect_to customer_login_path
      end
    end
  
    def destroy
      session[:customer_id] = nil
      redirect_to customer_login_path
    end
  
  end
  