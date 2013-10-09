class DropSubtotalFromInvoices < ActiveRecord::Migration
  def change
    remove_column :invoices, :subtotal
  end
end
