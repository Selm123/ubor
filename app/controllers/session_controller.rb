class SessionController < ApplicationController
  def customer_new
  end

  def customer_create
    customer = Customer.find_by :email => params[:email]
    if customer.present? && customer.authenticate(params[:password])
      session[:customer_id] = customer.id
      redirect_to root_path
    else
      flash[:error_message] = "Invalid email or password"
      redirect_to customer_login_path
    end
  end

  def customer_destroy
    session[:customer_id] = nil
    redirect_to customer_login_path
  end


  def driver_new
  end

  def driver_create
    driver = Driver.find_by :email => params[:email]
    if driver.present? && driver.authenticate(params[:password])
      session[:driver_id] = driver.id
      redirect_to root_path
    else
      flash[:error_message] = "Invalid email or password"
      redirect_to driver_login_path
    end
  end

  def driver_destroy
    session[:driver_id] = nil
    redirect_to driver_login_path
  end

end
