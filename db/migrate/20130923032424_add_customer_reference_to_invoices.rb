class AddCustomerReferenceToInvoices < ActiveRecord::Migration
  def change
    add_reference :invoices, :customer, index: true
  end
end
