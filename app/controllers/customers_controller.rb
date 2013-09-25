class CustomersController < ApplicationController
  before_action :require_authentication
  
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @customer = Customer.new
    @customer.contacts.build
  end

  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      redirect_to customers_path, notice: "Successfully created customer"
    else
      render 'new', error: "Customer was not created"
    end
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    redirect_to customers_path, notice: "Customer deleted!"
  end

  private

    def customer_params
      params.require(:customer).permit(:name, contacts_attributes: [:id, :name])
    end

end
