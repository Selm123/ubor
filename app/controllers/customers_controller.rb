class CustomersController < ApplicationController
  before_action :check_for_admin, :only => [:index]
  # before_action :check_for_customer_login

  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new customer_params
    if @customer.save
      session[:customer_id] = @customer.id
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @customer = Customer.find params[:id]
  end

  def edit
    @customer = Customer.find params[:id]
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
  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :street, :suburb, :postcode, :state, :email, :password, :password_confirmation, :phone, :credit_card_no, :credit_card_expiry_date, :cvv)
  end
end
