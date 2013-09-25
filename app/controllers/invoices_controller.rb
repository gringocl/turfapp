class InvoicesController < ApplicationController
  def index
    @invoices = Invoice.order(:number)
    #@invoices.includes(:customers)
  end

  def show
  end

  def new
    @invoice = Invoice.new

    5.times { @invoice.build.invoiceitems }

  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
