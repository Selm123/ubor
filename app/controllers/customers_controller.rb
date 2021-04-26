class CustomersController < ApplicationController
  before_action :check_for_admin, :only => [:index]

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
  end

  def edit
  end

  private
  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :street, :suburb, :postcode, :state, :email, :password, :password_confirmation, :phone, :credit_card_no, :credit_card_expiry_date, :cvv)
  end
end
