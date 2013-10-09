class AddSubtotalToInvoiceItems < ActiveRecord::Migration
  def change
    add_column :invoice_items, :subtotal, :integer
  end
end
