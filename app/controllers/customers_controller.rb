class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
    @customer.clients.build
  end

  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      redirect_to customers_path, notice: "Successfully Create Customer"
    else
      redirect_to :new, error: "Customer was not created"
    end
  end


  private

    def customer_params
      params.require(:customer).permit(:name, clients_attributes: [:id, :name])
    end

end
