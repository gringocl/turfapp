class ChangeSubtotalToDecimalInvoiceItems < ActiveRecord::Migration
  def change
    remove_column :invoice_items, :subtotal
    add_column :invoice_items, :subtotal, :decimal, precision: 9, scale: 2

    remove_column :invoices, :total
    add_column :invoices, :total, :decimal, precision: 9, scale: 2
  end
end
