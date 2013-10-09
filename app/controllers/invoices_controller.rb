class InvoicesController < ApplicationController
  before_action :set_invoice, only: [:show, :edit, :update, :destroy]

  def index
    @invoices = Invoice.order(:number)
    #@invoices.includes(:customers)
  end

  def show
  end

  def new
    @invoice = Invoice.new

    5.times { @invoice.invoice_items.build }

  end

  def edit
  end

  def create
    @invoice = Invoice.new(invoice_params)



    if @invoice.save
      
      redirect_to @invoice, notice: 'success'
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

  private
    def invoice_params
      params.require(:invoice).permit(:number, :discount, :created_at, :customer_id, invoice_items_attributes: [:invoice_id, :product_id, :quantity, :subtotal] )
    end

    def set_invoice
      @invoice = Invoice.find(params[:id])
    end


end
